# instalando pacote postgresql
# install.packages('RPostgreSQL',dependencies = T)

# carregando a lib
library('RPostgreSQL')


# conectando ao banco
con <- dbConnect(PostgreSQL(), user = 'postgres', password = 'coti', dbname = 'aular')
con

rs <- dbSendQuery(con, "select * from produto order by nome")
rs

df <- fetch(rs, n = -1)
df


dim(df)
head(df)
dbListTables(con)

produtos <- dbGetQuery(con, statement = "select * from produto order by nome")
produtos








