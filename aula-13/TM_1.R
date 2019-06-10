# Instalar pacote TM
install.packages("tm", dependencies = T)

library(tm)

# Fonte de textos disponiveis no pacote TM
getSources()

# formatos
getReaders()

# Criação do VCorpus -> memoria
# Caminho, encoding, tipo de leitura de arquivo
# Linguagem do arquivo esperado

corpus = VCorpus(DirSource("C://Arquivos", encoding = "UTF-8"),
                 readerControl = list(reader = readPlain, 
                                      language = "eng"))

# Resumo de corpus
inspect(corpus)


# inspecionar o corpus especifico
inspect(corpus[1:100])

# Tamanho
length(corpus)


# metadados corpus
meta(corpus[[1]])

# inspecionar um texto do corpus
# a primeira linha do documento 2
as.character(corpus[[2]])[1]

# Geração da nuvem de palavras

# stopwords -> (palavras sem valor semantico)
stopwords("portuguese")

# remover stopwords
corpus = tm_map(corpus, removeWords, stopwords("english"))

# remover espaços
corpus = tm_map(corpus, stripWhitespace)

# Remover pontuacao
corpus = tm_map(corpus, removePunctuation)

# remover numeros
corpus = tm_map(corpus, removeNumbers)


# Criação da nuvem de palavras
# Instalar o pacote wordcloud
#install.packages("wordcloud", dependencies = T)
#install.packages("RColorBrewer")

library(wordcloud)

wordcloud(corpus, max.words = 100, random.order = TRUE, 
          colors = rainbow(8), rot.per=0.5, 
          use.r.layout = T)

# Criar a matrix  de termo de frequencia
freq = TermDocumentMatrix(corpus)

# Transformar em uma matriz
matriz = as.matrix(freq)
matriz

# Ordenando a matriz de termos de frequentes
matriz = sort(  rowSums(matriz), decreasing = T )
dt_freq = data.frame(word = names(matriz), freq = matriz)

dt_freq
View(dt_freq)















































