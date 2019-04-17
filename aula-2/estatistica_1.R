dim(iris) 
head(iris)

# serparando dados em 2 conjuntos 
# gerar 150 numeros aleatorios entre (0,1)
# exemplo 1 amostragem
# 1 parametro conjunto de dados da amostra
# 2 parametro quantidade de dados a ser gerada
# 3 com reposição ou não
# 4 vetor de probabilidade
amostra <- sample(c(0,1), 150, replace = T, prob = c(0.5,0.5))
amostra


# Não será criado um vetor de 50%

length(amostra[amostra == 1])
length(amostra[amostra == 0])
length(amostra)

class(amostra)


# função set.seed() -> mantem constante o modelo de aleatoriedade
set.seed(2345)
sample(c(100),1)














