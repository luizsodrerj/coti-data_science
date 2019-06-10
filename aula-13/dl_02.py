from sklearn.neural_network import MLPClassifier

from sklearn import datasets

iris = datasets.load_iris()

entrada = iris.data

saidas = iris.target
iris.target_names

redeNeural = MLPClassifier(verbose= True, max_iter=1000,
                           tol=0.00001, learning_rate_init=0.01,
                           activation='logistic')

redeNeural.fit(entrada, saidas)

# Predicao
redeNeural.predict([entrada[120]])
redeNeural.predict([[5, 6.3, 3., 4]])

iris.target[120]

