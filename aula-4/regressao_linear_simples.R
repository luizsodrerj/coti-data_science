dados <- read.csv(
    file.choose(), sep=';',
    dec = ',', header = T
)

head(dados)

cor(dados)

modelo <- lm(vendas ~ preco, data = dados)

modelo$coefficients

previsao <- predict(modelo, data.frame(preco = c(230,450,710,190)))

previsao
round(previsao)

