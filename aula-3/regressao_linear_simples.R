# conjunto de dados de carros instalados no R
# prever a distancia de parada

cars

dim(cars)
summary(cars)

# verificar a correlação entre as duas variaveis
cor(cars)

# função lm -> linear model
modelo <- lm(speed ~ dist, data = cars)
modelo

plot(modelo)

plot(speed ~ dist, data = cars)
abline(modelo)

# prever a velocidade de parada do carro
# formula da previsão -> intersecção + (declive * valorPrevisto)
modelo$coefficients[1]
modelo$coefficients[2]

# prever -> 22
modelo$coefficients[1] + modelo$coefficients[2] * 22

# funcção predict -> usado para efetuar previsão
predict(modelo, data.frame(dist = 22))










