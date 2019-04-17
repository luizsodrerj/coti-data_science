
# amostra sistematica
# install.packages("TeachingSampling")

library(TeachingSampling)

# intervalor de 10 em 10
amostra <- S.SY(150, 10)
amostra
amostrairis <- iris[amostra, ]
dim(amostrairis)
amostrairis


