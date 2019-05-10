# instalar pydataset
# pip install pydataset

import pydataset
import pandas as pd


# conjunto de dados no padrão de um dataframe
pydataset.data()

# data frame
type(pydataset.data())


titanic = pydataset.data('titanic')
titanic.head()

titanic.tail(10)

titanic.describe()

titanic['class'].value_counts()

len(pydataset.data())







