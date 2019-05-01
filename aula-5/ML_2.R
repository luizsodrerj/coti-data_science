# arvore de decisão
# install.packages('rpart',dependencies = T)

library(rpart)

# carregando o conjunto de dados de treinamento
creadito <- read.csv(file.choose(), sep = ",", header = T)


# amostras
amostra <- sample(2, 1000, replace = T, prob = c(0.7,0.3))

# separando as amostras de treinamento
creditotreino <- credito[amostra == 1,]
creditoteste <- credito[amostra == 2,]

dim(creditotreino)
dim(creditoteste)

# criação do modelo arvore decisão
# class -> class -> metodo

# arvore -> modelo criado com algoritmo de arvore de decisão
arvore <- rpart(class ~., data = creditotreino, method = "class")
arvore

plot(arvore)
text(arvore, use.n = T, all = T, cex=0.8)

teste <- predict(arvore, newdata = creditoteste)
teste

dim(teste)
dim(creditoteste)

cred <- cbind(creditoteste, teste)  
fix(cred)

cred["Result"] <- ifelse(cred$bad >= 0.5, "bad", "good") 
fix(cred)






