# regras de associação com apriori
# install.packages("arules")
library(arules)

transacoes <- read.transactions(file.choose(), format = "basket",
                                sep = ",")
inspect(transacoes)

image(transacoes)

regras <- apriori(transacoes, parameter = list(sup = 0.2, conf = 0.2))

inspect(regras)

# install.packages("arulesViz")
# install.packages("gtools")
library(arulesViz)


plot(regras, method = "graph", control = list(type="items"))
plot(regras, method = "matrix", control = list(type="items"))
plot(regras, method = "matrix3D", measure = "lift",
     control = list(reorder = "support/confidence"))

plot(regras, method = "grouped")










