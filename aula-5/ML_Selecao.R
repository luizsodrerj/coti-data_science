# seleção de atributos -> serve p/ criar modelos
# mais simples
# e1071

library(e1071)

# conjunto de dados credito
credito

# fit -> svm
modelo <- svm(class ~ ., creditotreino)
modelo

pred <- predict(modelo, creditoteste)
pred

confusao <- table(creditoteste$class, pred)
confusao

taxac1 <- (confusao[1] + confusao[4]) / sum(confusao)
taxac1 * 100

# selecao de atributos
install.packages("FSelector", dependencies = T)
library("FSelector")
random.forest.importance(class ~ ., credito)

# selecionar os atributos
# checking_status, duration, credit_history, purpose
modelo <- svm(class ~ checking_status + 
                duration + purpose + credit_history,
              creditotreino)
modelo

pred2 <- predict(modelo, creditoteste)
confusao2 <- table(creditoteste$class, pred2)
confusao2

taxac2 <- (confusao2[1] + confusao2[4]) / sum(confusao2) 
taxac2







