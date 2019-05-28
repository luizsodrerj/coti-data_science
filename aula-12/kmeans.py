import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import confusion_matrix
from sklearn import datasets

iris = datasets.load_iris()

# Quantidade de elementos por Classe
unicos, quantidade = np.unique(iris.target, return_counts = True)

unicos
quantidade

# Criação do cluster, somente o numero de cluster
cluster = KMeans(n_clusters= 3)
cluster.fit(iris.data)

# Criação dos centroides -> defini o centro de cada
# um dos grupos.
centroides = cluster.cluster_centers_
centroides

previsoes = cluster.labels_
previsoes

resultados  = confusion_matrix(iris.target, previsoes)
# Não há o somatorio da diagonal principal
# para verificar o percentual de erro e acertos.
resultados

# visualização de graficos
plt.scatter(iris.data [previsoes == 0, 0],
            iris.data[previsoes == 0, 1],
            c = 'green', label = 'Setosa')


plt.scatter(iris.data [previsoes ==1, 0],
            iris.data[previsoes == 1, 1],
            c = 'red', label = 'Versicolor')

plt.scatter(iris.data [previsoes ==2, 0],
            iris.data[previsoes == 2, 1],
            c = 'blue', label = 'Virginica')

plt.legend()














