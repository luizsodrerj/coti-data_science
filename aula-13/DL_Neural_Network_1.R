# Deep learning
install.packages("neuralnet", dependencies = T)
library(neuralnet)

# Conjunto de dados do iris
myiris = iris

head(myiris)

# Binarizar

myiris = cbind(myiris, myiris$Species == 'setosa')
fix(myiris)

myiris = cbind(myiris, myiris$Species == 'versicolor')


myiris = cbind(myiris, myiris$Species == 'virginica')
fix(myiris)

View(myiris)


# Alterar
names(myiris)[6] = 'setosa'
names(myiris)[7] = 'versicolor'
names(myiris)[8] = 'virginica'


# Teste e treino

amostra = sample(2, 150, replace = T, prob = c(0.7, 0.3))
amostra

myiristreino = myiris[amostra ==1, ]
myiristeste = myiris[amostra ==2, ]

dim(myiristreino)
dim(myiristeste)


# modelo treinamento
modelo = neuralnet(setosa + versicolor + virginica ~
                     Sepal.Length + Sepal.Width +
                     Petal.Length + Petal.Width,
                   myiristreino, hidden = c(5, 4))

print(modelo)
plot(modelo)


# Objeto teste
teste <- compute(modelo, myiristeste[,1:4])
teste$net.result

resultado = as.data.frame(teste$net.result)
names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'

head(resultado)

# Criar a coluna classe
resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = "first")]

head(resultado)
fix(resultado)

confusao = table(resultado$class, myiristeste$Species)
confusao

sum(diag(confusao) * 100/  sum(confusao))











































