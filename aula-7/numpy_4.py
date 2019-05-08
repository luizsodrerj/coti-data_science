import numpy as np

# arange - criar uma lista de numeros
array = np.arange(100000)
array 


# arrays multidimensionais
mat = np.array([[1,2],[3,4]])
mat


# randn
data = np.random.rand(2,3)
data

data.shape

# dimensões
data.ndim


# inserindo dados no array
arr = np.array([1,2,3])
arr


# insert
np.insert(arr, 1, 10)

a = np.array([[1,2,3],[4,5,6]])

# somatorio
a.sum()

# somatorio no eixo 0
a.sum(axis = 0)


# somatorio no eixo 1
a.sum(axis = 1)


np.insert(a, 1, 5, axis = 1)











