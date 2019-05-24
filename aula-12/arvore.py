# Instalar o pacote graphviz
# pip install graphviz
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.metrics import confusion_matrix, accuracy_score
from sklearn.tree import DecisionTreeClassifier

credito = pd.read_csv('Credit.csv')

previsores = credito.iloc[:, 0:20].values
classe = credito.iloc[:, 20].values

# Criar o objeto
labelencoder = LabelEncoder()


previsores[:, 0] = labelencoder.fit_transform(previsores[:, 0])
previsores[:, 2] = labelencoder.fit_transform(previsores[:, 2])
previsores[:, 3] = labelencoder.fit_transform(previsores[:, 3])
previsores[:, 5] = labelencoder.fit_transform(previsores[:, 5])
previsores[:, 6] = labelencoder.fit_transform(previsores[:, 6])
previsores[:, 8] = labelencoder.fit_transform(previsores[:, 8])
previsores[:, 9] = labelencoder.fit_transform(previsores[:, 9])
previsores[:, 11] = labelencoder.fit_transform(previsores[:, 11])
previsores[:, 13] = labelencoder.fit_transform(previsores[:,13])
previsores[:, 14] = labelencoder.fit_transform(previsores[:, 14])
previsores[:, 16] = labelencoder.fit_transform(previsores[:, 16])
previsores[:, 18] = labelencoder.fit_transform(previsores[:, 18])
previsores[:, 19] = labelencoder.fit_transform(previsores[:, 19])

previsores[0]


# Dividir o conjunto de dados
x_treinamento,x_teste, y_treinamento, y_teste = train_test_split(previsores, classe, test_size=0.3, random_state = 0)

# Estudo do gano de informação
arvore = DecisionTreeClassifier(criterion="entropy")
arvore.fit(x_treinamento, y_treinamento)

# Exportação do grafico da arvore de decisao
import graphviz
from sklearn.tree import export_graphviz

credito.shape

export_graphviz(arvore, out_file='tree.dot', 
                feature_names= credito.columns[0:20], 
                class_names=credito['class'].unique(), 
                leaves_parallel=True, filled= True)

# Acessar o site do graphviz
# www.webgraphviz.com

# pip install pydot
# instalar no windows graphviz

import pydot
import os

os.environ["PATH"] += os.pathsep + "C:/Program Files (x86)/Graphviz2.38/bin"
(graph, ) = pydot.graph_from_dot_file('tree.dot')
graph.write_png('arvore.png')


# Efetuar o treinamento
previsoes = arvore.predict(x_teste)
previsoes


confusao  = confusion_matrix(y_teste, previsoes)
confusao

taxa_acerto = accuracy_score(y_teste, previsoes)
taxa_acerto











