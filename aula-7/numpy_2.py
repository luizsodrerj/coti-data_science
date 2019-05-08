import numpy as np


array = np.arange(100000)
array 


lista = list(range(100000))
lista


# calculando tempo de processamento
%time for _ in range(10) : array = array * 2

%time for _ in range(10) : lista = [x * 2 for x in lista]

# array multidimensional
data = np.random.rand(2,3)
print(data)

data * 10


# cformato
data.shape
data.dtype





