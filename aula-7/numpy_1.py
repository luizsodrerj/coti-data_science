# import numpy
# numeric array

import numpy

a = numpy.array([10,20,30,50])
a

type(a)

mat = numpy.array([[1,2],[3,4]])
print(mat)

# acessar indice
print(mat[1,1])


# indice negativo
print(mat[-1,-1])


# transposição
print(mat.transpose())


m1 = numpy.array(numpy.array([[1,2],[3,4]]))
m2 = numpy.array(numpy.array([[5,6],[7,8]]))

m1
m2

# operações
print(m1 + m2)
print(m1 - m2)

# funções
m3 = numpy.array([1,2,3,4])
m3

# argmax - indice do maior elemento
p = m3.argmax()
print(p)
m3[p]

p = m3.argmin()
print(p)











