
# geração de amostra estratificada
# conjunto de dados iris analisar o atributo especies
# gerar amostras de tamanho fixo. escolhidos aleatoriamente

# summary -> comando para descrever o conjunto de dados
summary(iris)

# pacote para amostras estratificadas
install.packages("sampling")


library(sampling)


amostrairis <- strata(iris, c("Species"), size = c(25,25,25), method = "srswor")
summary(amostrairis)
help(strata)

# dados com variaveis categorias com distribuições diferentes
# proporção de dados por categoria
# 100 vendedores A, 200 B 300 C --> 50% cada.

# conjunto de dados instalado no R sobre infertilidades
data(infert)

summary(infert)

dim(infert)

# amostra -> 100
round(120 / 248 * 100)
round(116 / 248 * 100)
round(12 / 248 * 100)

amostra <- strata(infert, c("education"), size = c(5,48,47), method = "srswor")
summary(amostra)
dim(amostra)






