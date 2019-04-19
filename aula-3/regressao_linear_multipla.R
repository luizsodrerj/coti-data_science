# regressão multipla
data("mtcars")

head(mtcars)

dim(mtcars)

# linear simples
modelo <- lm(mpg ~ disp, data = mtcars)
modelo

# coeficiente de determinação
summary(modelo)$r.squared

plot(mpg ~ disp, data = mtcars)

abline(modelo)

# prever
predict(modelo, data.frame(disp = 200))

head(mtcars[1:4])


# modelo regresssão multipla
modelo <- lm(mpg ~ disp + cyl + hp, data = mtcars)
modelo

summary(modelo)$r.squared
summary(modelo)$adj.r.squared


predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))






