import numpy as np
import math

# função load dados
amostras = []

with open('dataset.data', 'r') as f :
    for linha in f.readlines() :
        atrib = linha.replace('\n','').split(',')
        amostras.append([ int(atrib[0]), int(atrib[1]),
                          int(atrib[2]), int(atrib[3])
                      ])
print(amostras[:5])    
print(len(amostras))


