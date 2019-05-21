import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression


base = pd.read_csv('mt_cars.csv')
base = base.drop(['Unnamed: 0'], axis = 1)

base.head()
base.shape


x = base.iloc[:,1:4].values
y = base.iloc[:,0].values


# regressão multipla
modelo = LinearRegression()
modelo.fit(x, y)
modelo.score(x, y)

registro = np.array([[4,200,100]])
registro

modelo.predict(registro)








