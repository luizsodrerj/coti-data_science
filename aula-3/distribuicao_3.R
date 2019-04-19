
# distrib normal
# diagrama de normalidade usando a função rnorm()
# criar um conjunto de dados 

x <- rnorm(100)
x


# gerar grafico normalidade
qqnorm(x)
qqline(x)

shapiro.test(x)

rnorm(10, sd = 2, mean = 70)
round(rnorm(10, sd = 2, mean = 70))









