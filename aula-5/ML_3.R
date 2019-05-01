# machine learning regressão
# conjunto de dados

# library p/ instalação de datasets
install.packages("mlbench")

library(mlbench)

# dataset para regressão
data("BostonHousing")
help("BostonHousing")

dados <- BostonHousing
dim(dados)

amostra <- sample(2, 506, replace = T, prob = c(0.7, 0.3))

dadostreino <- dados[amostra == 1, ]
dadosteste <- dados[amostra == 2, ]

dim(dadostreino)
dim(dadosteste)

head(dados$medv, 10)

fit <- rpart(medv ~ ., data = dadostreino, method="anova")
plot(fit)
text(fit, use.n = T, all = T, cex = 0.8)

prev <- predict(fit, newdata = dadosteste)
prev

dim(dadosteste)

r <- cbind(dadosteste, prev)
fix(r)

# coluna com a diferença do valor previsto
r$dif <- abs(r$medv - r$prev)
fix(r)

max(r$dif)
min(r$dif)

median(r$dif)
mean(r$dif)

# media
media <- mean(r$dif) * 1.3
media

# porcentagem
porc <- (sum(r$dif <= media) * 100) / dim(r)[1] 
porc










