# regressão logistica
# usa o csv eleicao

eleicao <- read.csv(
  file.choose(), sep=';',
   header = T
)

plot(eleicao$DESPESAS, eleicao$SITUACAO) 

cor(eleicao$DESPESAS, eleicao$SITUACAO) 

# modelo regressão logistica
modelo <- glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")

points(eleicao$DESPESAS, modelo$fitted, pch = 4)

# treinamento de dados --> novoscandidatos.csv
peleicao <- read.csv(file.choose(), sep = ';', header = T)
fix(peleicao)


# previsao
peleicao$RESULT <- predict(modelo,newdata = peleicao, type = "response")

fix(peleicao)





