# criando um fator
# fatores contem levels e sao objetos de classes
# diferentes do vetor

estados <- c("RJ","SP","PB")

class(estados)
attributes(estados)

estadosf <- factor(estados)

class(estadosf)
attributes(estadosf)

pessoas <- c("Rui","Bia","Ana","Leo","Nat","Rui","Leo","Bia","Leo")
# table -> contagem
table(pessoas)

pessoasn <- factor(pessoas, levels = c("Rui","Ana","Nat","Pi","Bia","Leo","Bob"))
table(pessoasn)


# reagrupando fatores
pessoassite <- pessoasn
levels(pessoassite)


table(pessoasn)


# reagrupando fatores
pessoassite <-pessoasn
levels(pessoassite)


# criterio de grupo
levels(pessoassite) <- c("Site","Site","Site","Site","Site","App","App")
table(pessoassite)


grau <- c("medio","baixo","medio","baixo","alto","medio","alto","medio")

table(grau)
factor(grau, ord = T)
factor(grau, ord = T, levels=c("baixo","medio","alto"))
ordered(grau, levels = c("baixo","medio","alto"))


# ordem inversa
vec <- 1:10
rev(vec)

# criaçã odinamica
vec <- round(rnorm(7,m=70,sd=10))
vec

#ordenar
sort(vec)


# rankeamento
rank(vec)

which(vec > 70)
which.max(vec)
which.min(vec)



# remover elementos
vec[-5]
vec 

# intervalo
vec[-(1:3)]





