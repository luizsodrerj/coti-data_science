# pacote apriori
# pip install apyori
from apyori import apriori
import pandas as pd

dados = pd.read_csv('mercado2.csv', header = None)
print(dados)

transacoes = []

#Converte os dados em transações
for i in range(len(dados)):
    transacoes.append([ str(dados.values[i, j]) for j in range(len(dados.columns))])
    
transacoes

len(transacoes)

transacoes[0]

regras  = apriori(transacoes, min_support = 0.003,
                  min_confidence = 0.2, min_lift = 3,
                  min_lenght = 2)

regras
resultados  = list(regras)
print(len(resultados))

resultados2  = [list(x) for x in resultados]

resultadoFormatado = []

for j in range(0, 4):
    resultadoFormatado.append([list(x) for x in resultados2[j][2]])
resultadoFormatado


len(resultadoFormatado)


for r in resultadoFormatado:
    print(r)
    print('----------------------')
    
    























