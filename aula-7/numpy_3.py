import numpy as np

l = [10,20,30,40,50]

# converte a lista
a = np.array(l)
a

# copia a lista
b = a[:]

b[0] = 20000
a

# copia real
c = a.copy()
c[0] = 50000
a
c





