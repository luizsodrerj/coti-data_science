# outliers
# iris ->  datasets
boxplot(iris$Sepal.Width)


# Stats -> exibir os ouliers de uma coleção
# Somente ouliers
boxplot.stats(iris$Sepal.Width)$out


# pacote p trabalhar c outliers
install.packages('outliers')

library(outliers)

# superior
outlier(iris$Sepal.Width)

# inferior
outlier(iris$Sepal.Width, opposite = T)




