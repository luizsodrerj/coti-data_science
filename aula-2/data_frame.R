# Data Frame

d1 <- data.frame(x = 1:10, y = c(51,54,61,67,68,75,77,75,80,82)) 

# Nomes
names(d1)

# ver tipo
class(d1)

# acessar as colunas do df
d1$x
d1$y

# plotando os dados do df
plot(d1)
plot(d1$x,d1$y)
