# pacote arules

transacoes <- read.transactions(file.choose(),
                                sep = ',',
                                format = 'basket')
inspect(transacoes)
image(transacoes)  
  
regras <- eclat(transacoes,
                parameter = list(supp=0.1,maxlen=15)
                )  
inspect(regras)  

plot(regras, method = "graph",
     control = list(alpha = 1.0, arrowSize = 1.0))




