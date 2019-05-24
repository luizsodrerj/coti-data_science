# Instalar o pacote scikit-fuzzy
# pip install scikit-fuzzy
from sklearn import datasets
import numpy as np
from sklearn.metrics import confusion_matrix, accuracy_score
import skfuzzy

iris = datasets.load_iris()

# Transpor a matriz -> T, transformar linha em coluna.
# Agrupamento parcial difuso
# Um elemento pode participar a mais de um grupo
# Data -> conjunto de dados que sera analisado.
# Error -> 0.005, valor minimo do error
# maxitter -> numero maximo de iterações

r = skfuzzy.cmeans(data= iris.data.T, c = 3, m = 2,
                   error = 0.005, maxiter = 1000, 
                   init = None)


# r -> retorna uma tupla com 7 posições
previsoes_porcentagem = r[1]

# Probabilidade do primeiro registro esta
# em uma das 3 classes
print(previsoes_porcentagem[0][1])
print(previsoes_porcentagem[1][1])
print(previsoes_porcentagem[2][1])

previsoes = previsoes_porcentagem.argmax(axis = 0)

confusao = confusion_matrix(previsoes, iris.target)
confusao























