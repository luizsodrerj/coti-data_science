
# matrizes
# criar uma matriz

m1 <- matrix(1:6, nc = 3)
m1

m2 <- matrix(10 *(1:6), nc = 3)
m2

# operações em matrizes

m1 + m2
m1 - m2
m1 * m2
m2 / m1

m1 ** m2

t(m1)

# tamanho
length(m1)


#dimensoes
dim(m1)

# colunas 
ncol(m1)


# elementos
m1[1,3]


dimnames(m1) <- list (c("L1","L2"), c("C1","C2","C3"))
dimnames(m1)

m1["L1",]

m1[1,]

m2 <- cbind(1:5,6:10)
m2

# funções -> soma
margin.table(m1, margin = 1)


# apply mesmo q margin agragação
apply(m1,1,sum)
m1

# somatorio colunas
colSums(m1)







