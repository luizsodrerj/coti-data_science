import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearReression


base = pd.read_csv('cars.csv')
base = base.drop('Unnamed: 0', axis = 1)

# dist
x = base.iloc[:, 1].values

# speed
y = base.iloc[:, 0].values


correlacao = np.corrcoef(x, y)


# efetuar comando para formatar o conjunto de dados em uma matriz
x = x.reshape(-1, 1)

print(x[0:10]) 















