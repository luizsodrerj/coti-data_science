import numpy as np

a = np.array([[1,2],[3,4]])
a

# repeat
np.repeat(a, 3)

np.repeat(a, 2, axis = 0)


# tile
a = np.array([1,2,3])
np.tile(a, 2)


a = np.array([[1,2,3],[4,5,6]])
a

b = np.array([[1,2,3],[4,5,6],[7,8,9],[10,11,12]])
b
arrays = np.array_split(b, 4, axis = 0)

for array in arrays:
    print(array)


np.zeros(4)
np.zeros((2,2))

a = np.array([[1,2],[4,5],[7,8]])

idx = (a > 2)
idx


# numeros cmplexos

a = np.array([1, 10+2j, 20 + 5j], dtype = complex)
a[1]

a[1] + a[2]

# geando arrays
np.arange(10)
np.arange(1,100,2)

np.linspace(2.0, 3.0, 5)









