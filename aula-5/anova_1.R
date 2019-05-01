# ANOVA
# carregar os dados

tratamento <- read.csv(file.choose(), sep = ";", header = T)

fix(tratamento)
dim(tratamento)

# diferença entre variaveis
boxplot(Horas ~ Remedio, data = tratamento)

an <- aov(Horas ~ Remedio, data = tratamento)

summary(an)

an <- aov(Horas ~ Remedio * Sexo, data = tratamento)

summary(an)

# teste de Tukey --> validador

tukey <- TukeyHSD(an)
tukey



