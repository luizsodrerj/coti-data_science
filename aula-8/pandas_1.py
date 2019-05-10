import pandas as pd
import numpy as np

# series (data frame) - dados em uma unica dimensão

s = pd.Series([1,4,5,6,7,10,6])
s

s[0]

s[2:4]

# descrição da serie antigo summary do R
s.describe()

#media
s.mean()

#mediana
s.median()


# elementos duplicados
s.duplicated()

s2 = pd.Series([11,5,8])

# juntar
s.append(s2)


# pandas - com dataframe - tabela de linhas e colunas

df = pd.DataFrame([
      ['Python Web', 2000],  
      ['Machine Learning', 3000], 
      ['Logica Programacao', 4500]  
     ], columns = ['curso','alunos']
    )

df['curso']

df['alunos'].mean()







