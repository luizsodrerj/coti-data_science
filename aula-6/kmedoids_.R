# pacote - cluster
# install.packages("cluster", dependencies = T)
library(cluster)

# baseado em medoids - ponto real de dados
cluster <- pam(iris[,1:4], k = 3)
cluster

plot(cluster)


