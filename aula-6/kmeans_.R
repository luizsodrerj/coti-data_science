# agrupamento -> kmeans
# conjunto de dados -> iris 150 instancias 5 colunas
# class -> setosa, versicolor e virginica
# agrupamento -> quando so elementos não possuem classes

head(iris)

# criar variavel cluster -> resultado do agrupamento
# criação dos grupos
# medias do atributo de cada cluster baseado em centroide
cluster <- kmeans(iris[1:4], centers = 3)
cluster

# matriz de consusao
table(iris$Species, cluster$cluster)

plot(iris[, 1:4], col = cluster$cluster)


