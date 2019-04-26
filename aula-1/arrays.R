# Arrays

# arrays com 3 dimensões e 24 elementos
ar1 <-array(1:24, dim = c(3,4,2))  
ar1

ar1[, ,]

#  colunas 2 e 3  todas as dimensoes 
ar1[ ,2:3, ]


# somente a segunda linha da primeira dimensao
ar1[2, ,1]

dimnames(ar1)

dimnames(ar1) <- list(c("Baixo","Medio","Alto"),
                      paste("col", 1:4, sep=""),
                      c("Masculino","Feminino"))  
dimnames(ar1)

data("Titanic")

dim(Titanic)

sum(Titanic)

dimnames(Titanic)

# somatorio dos passageiros da classe crew
sum(Titanic[4, , ,])

# quantos passageiros sobreviveram
sum(Titanic[4, , ,2])


# porcentagem realtiva dos sobreviventes da classe crew
(sum(Titanic[4, , ,2])/ sum(Titanic[4, , , ])) * 100

# margin
margin.table(Titanic, margin = 1)[4]
margin.table(Titanic[, , ,2], margin = 1)[4]


# apply
apply(Titanic, 1, sum)[4]


apply(Titanic[, , ,2], 1, sum)[4]


# quantidade crianças sexo feminino
margin.table(Titanic, margin = 2)

margin.table(Titanic, margin = 3)
margin.table(Titanic, margin = 3)[1]

margin.table(Titanic[, , 1,], margin = 2)
margin.table(Titanic[, , 1,], margin = 2)[2]

margin.table(Titanic[, , 1,2], margin = 2)
margin.table(Titanic[, , 1,2], margin = 2)[2]

# homens primeira classe sobreviveram
margin.table(Titanic[, , 1,2], margin = 1)
margin.table(Titanic[, , 1,2], margin = 1)[1]




