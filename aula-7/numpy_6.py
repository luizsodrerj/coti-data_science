import numpy as np

val1, val2, val3 = np.loadtxt('dados.txt', 
                               skiprows = 1,
                               unpack = True
                             )

my_array = np.genfromtxt(
                'dados2.txt', 
                skip_header = 1,
                filling_values = 1000
            )
my_array

data = np.genfromtxt(
             'iris.data', 
              delimiter = ',',
              usecols = (0,1,2,3)
            )
data
len(data)

data.dtype

data[:50,0]


import matplotlib.pyplot as plt

plt.plot(data[:50,0],c='Red',ls=':',marker='s', 
         ms=8, label='Comp. Sepala Iris-Setosa')

plt.plot(data[50:100,0],c='Black',ls=':',marker='o', 
         ms=8, label='Comp. Sepala Iris-Versicolor')

plt.legend()
plt.show()



















