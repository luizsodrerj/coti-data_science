import pandas as pd
import numpy as np
import matplotlib.pylab as plt

base = pd.read_csv('AirPassengers.csv')
base.head()

# Numero de passageiros e o mes
# 1940 a 1960
# Transformar o atributo mes em data
print(base.dtypes)

dateparse = lambda dates: pd.datetime.strptime(dates, '%Y-%m')

base = pd.read_csv('AirPassengers.csv', 
                   parse_dates = ['Month'],
                   index_col='Month',
                   date_parser = dateparse)
base

# Transformar o dataFrame em uma serie temporal

ts  = base['#Passengers']
# indexação por intervalos
ts[ '1950-01-01' : '1950-07-31']
ts[:'1950-07-31']     
ts['1950']
ts.index.max()
ts.index.min()
plt.plot(ts)

# Agrupando os dados
#  Codigo -> A, significa ano na função resample
ts_ano = ts.resample('A').sum()
plt.plot(ts_ano)


# Agrupar pelo mes
ts_mes = ts.groupby([lambda x:  x.month]).sum()
ts_mes

plt.plot(ts_mes)

ts_datas = ts['1960-01-01' :  '1960-12-01']

plt.plot(ts_datas)

# Decomposição da serie temporal
from statsmodels.tsa.seasonal import seasonal_decompose
decomposicao = seasonal_decompose(ts)

# Tendencia
tendencia = decomposicao.trend
# sazonalidade
sazonal = decomposicao.seasonal
#Efeito aleatorio
aleatorio  = decomposicao.resid

plt.plot(sazonal)

# tendencia
plt.plot(tendencia)

plt.plot(aleatorio)


# PLotagem dos graficos
plt.subplot(4, 1, 1)
plt.plot(ts, label ='Original')
plt.legend(loc = 'best')


plt.subplot(4, 1, 2)
plt.plot(tendencia, label ='Tendencia')
plt.legend(loc = 'best')

plt.subplot(4, 1, 3)
plt.plot(sazonal, label ='Sazonalidade')
plt.legend(loc = 'best')


plt.subplot(4, 1, 4)
plt.plot(aleatorio, label ='Aleatorio')
plt.legend(loc = 'best')

plt.tight_layout()


# Media 
ts.mean()

# Media do ultimo ano
ts['1960-01-01' :  '1960-12-01'].mean()

media_movel  = ts.rolling(window = 12).mean()
media_movel

ts[0:12].mean()

ts[1:13].mean()


plt.plot(ts)
plt.plot(media_movel, color='red')


# implementação da previsão sem o pacote
# len media-movel -> total de medias criadas
print(len(media_movel))

previsoes = []
for i in range(1, 13) :
    superior = len(media_movel) - i
    inferior = superior - 11
    print(inferior)
    print(superior)
    previsoes.append(media_movel[inferior:superior].mean())    

len(previsoes)

# inverter o vetor
previsoes = previsoes[::-1]


plt.plot(previsoes)


# previsoes com auto
# import 
# instalar o pcaote patsy -> erro na instalação do statsmodel
from statsmodels.tsa.arima_model import ARIMA


# order -> 3 parametros
# p -> numero de termos auto regressivos, q numero de media movel
# d numero de diferentes não sazonais

modelo = ARIMA(ts, order = (2,1,2))

# modelo de treinamento
modelo_treinado = modelo.fit()
modelo_treinado.summary()

previsoes = modelo_treinado.forecast(steps = 12)[0]
type(modelo_treinado)

eixo = ts.plot()

modelo_treinado.plot_predict(
                      '1960-01-01', '1962-01-01',
                      ax = eixo, plot_insample = True
                    )

# instalar o pacote pyramid
# pip install pyramid

from pyramid.arima import auto_arima










