# conjunto de dados de carros instalados no R
# prever a distancia de parada

cars

dim(cars)
summary(cars)

# verificar a correla��o entre as duas variaveis
cor(cars)

# fun��o lm -> linear model
modelo <- lm(speed ~ dist, data = cars)
modelo

plot(modelo)

plot(speed ~ dist, data = cars)
abline(modelo)

# prever a velocidade de parada do carro
# formula da previs�o -> intersec��o + (declive * valorPrevisto)
modelo$coefficients[1]
modelo$coefficients[2]

# prever -> 22
modelo$coefficients[1] + modelo$coefficients[2] * 22

# func��o predict -> usado para efetuar previs�o
predict(modelo, data.frame(dist = 22))










