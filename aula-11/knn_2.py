# 
import pandas as pd
import numpy as np

train = pd.read_csv('train.csv')
test = pd.read_csv('test.csv')

test.head()

test['class'].unique()


# criando vetores de teste e treinamento

cols = ['shoe size', 'height']
cols2 = ['class']


# treinamento
x_train = train.as_matrix(cols)
y_train = train.as_matrix(cols2)

# teste
x_test = test.as_matrix(cols)
y_test = test.as_matrix(cols2)


from sklearn.neighbors import KNeighborsClassifier

# treinamento das amostras
# knn ->
# weights ->
knn = KNeighborsClassifier(n_neighbors=3, weights='distance')

# treino
knn.fit(x_train, y_train.ravel())

# teste das amostras -> previsão
output = knn.predict(x_test)
output

y_test[0]
output[0]

correct = 0.0

for i in range(len(output)):
    if y_test[i][0] == output[i]:
        correct += 1
        
correct / len(output) * 100












