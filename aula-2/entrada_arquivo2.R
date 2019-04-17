# carregar Datasets no R
data("mtcars")

dim(mtcars)
fix(mtcars)

summary(mtcars)

help(mtcars)


# carregar arquivos xls xlsx
install.packages('gdata', dependencies = T)
install.packages('gtools', dependencies = T)

library('gdata')

# caminho de onde esta o arquivo excel

arquivo <- file.path('teste4.xlsx')
arquivo

sheetCount(arquivo)
sheetNames(arquivo)

clientes <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 1)
produtos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = "produtos")
enderecos <- read.xls('teste4.xlsx', verbose = T, perl = 'perl', sheet = 3)

clientes
produtos
enderecos


clientes$nome
produtos$preco
enderecos$bairro

xlsfile <- file.path(path.package('gdata'),'xls','iris.xls')

irisxls <- read.xls(xlsfile)
irisxls


dim(irisxls)
head(irisxls)
sheetCount(xlsfile)


