# ensamble learning
# multiplos algoritmos usando varios modelos
# Random forest -> varias arvores de decisão

# install_packages("randomForest", dependencies = T)
 
library(randomForest)

# carregar
credito <- read.csv(file.choose(), sep = ",", header = T)

head(credito)
fix(credito)

amostra <- sample(2, 1000, replace = T, prob = c(0.7,0.3))
creditotreino <- credito[amostra == 1,]
creditoteste <- credito[amostra == 2,]

dim(creditotreino)
dim(creditoteste)

# numero de arvores produzidas -> ntree
# importance - T
# objeto de modelo

floresta <- randomForest(class ~ ., data = creditotreino,
                         ntree = 100, importance = T)
floresta

varImpPlot(floresta)

previsao <- predict(floresta, creditoteste)
previsao

confusao <- table(previsao, creditoteste$class)

taxac <- (confusao[1] + confusao[4]) / sum(confusao)
taxac * 100













