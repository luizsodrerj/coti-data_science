# agrupamento -> kmeans
# conjunto de dados -> iris 150 instancias 5 colunas
# class -> setosa, versicolor e virginica
# agrupamento -> quando so elementos n�o possuem classes

head(iris)

# criar variavel cluster -> resultado do agrupamento
# cria��o dos grupos
# medias do atributo de cada cluster baseado em centroide
cluster <- kmeans(iris[1:4], centers = 3)
cluster

# matriz de consusao
table(iris$Species, cluster$cluster)

plot(iris[, 1:4], col = cluster$cluster)


