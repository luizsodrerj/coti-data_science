# comment vetor
vetor <- c(1,2,3,4,5)

# vetor de caracteres
nomes <-c("ana", "bill", "gil")

length(vetor)

# verificar se a colecao eh um vetor
is.vector(nomes)


# vetor numeros
numeros <- 1:10
numeros

numseq <- seq(0,1,by=0.1)

# operacoes
operacao <- c(10,20,30,40)
operacao + 3
operacao - 3
operacao * 3
operacao / 2

round(operacao / 3)


# vetor elementos repetidos
repet <- rep(1,5) 
repet 

repet <- rep(c(1,2), c(3,4))
repet

# utilizada p criar vetores de caracteres paste()
n <- c("maria", "ana", "bill")
n

paste(n, 1:3)
paste("maria", 2)






