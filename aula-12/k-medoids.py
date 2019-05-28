# pip install pyclustering
import pandas as pd
import  numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import confusion_matrix
from pyclustering.cluster.kmedoids import kmedoids
from pyclustering.cluster import cluster_visualizer
from sklearn import datasets

iris = datasets.load_iris()

# não precisa configurar o numero de cluster,
# ele descobre sozinho indices aleatorios o medoids

cluster = kmedoids(iris.data[:, 0:2], [3, 12, 20])
# medoids
cluster.get_medoids()

# efetuar o agrupamento
cluster.process()

# previsoes
previsoes = cluster.get_clusters()

# 3 Listas -> com os elementos de cada grupo
len(previsoes)

# Quantidade de elementos por grupo
for grupo in previsoes:
    print(len(grupo))
    
# Os elementos do grupo 0
print(previsoes[0])

# pegar medoids -> são usados como centro para a classificação
# cluster
medoides = cluster.get_medoids()

medoides

v  = cluster_visualizer()
v.append_cluster(previsoes, iris.data[:, 0:2])
v.append_cluster(medoides, iris.data[0:2], marker = '*',
                 markersize=15)
v.show()














    
    
    







