# aprendizado baseado em instancia
# nesse ele não cria um modelo
# vamos usar o KNN -> classificação

install.packages("class", dependencies = T)
library(class)

# criação da amostra
# neste tipo de treinamento criamos duas amostras

amostra <- sample(2, 150, replace = T, prob = c(0.7,0.3))

iristreino <- iris[amostra == 1,]
classificar <- iris[amostra == 2,]
dim(iristreino)
dim(classificar)

previsao <- knn(iristreino[,1:4], classificar[,1:4],
             iristreino[,5], k = 3)
confusao <- table(classificar[,5],previsao)
confusao

taxac <- (confusao[1] + confusao[5] + confusao[9]) / sum(confusao)      
taxac

taxac <- sum(diag(confusao) / sum(confusao))
taxac






