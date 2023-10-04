
# Operações aritméticas

2 + 2   # adição
4 - 1   # subtração
3*5     # multiplicação
10 / 5  # divisão
9 %/% 2 # divisão inteira
9 %% 2  # resto da divisão

# Variáveis

numero1 <- 10
numero2 <- 3

soma = numero1 + numero2
subtracao <- numero1 - numero2
multiplicação <- numero1 * numero2
divisao <- numero1 / numero2

# Tipos de Dados

    # Numero inteiro

numero <- 12
is.numeric(numero)

  # Numero flutuante

numero01 <- 5.5
is.double(numero01)
is.numeric(numero01)


  # String (texto)

frase <- "Hello word"
frase
is.character(frase)

  #Booleano
v <- TRUE
f <- FALSE
print(v)

  # Vetores
vetor1 = c(1,2,3,4,5)
print(vetor1)

vetor2 <- c(1:10)

vetor3 <- c("Roger", "Alberto", "Paulo")

  # Lista
lista1 <- list(c(1:5), "Dia d Semama", TRUE)
lista1

lista2 <- list(2023, "Setembro", now())
lista2[3]

  # Matriz
m <- matrix(c(1:15), ncol = 5, nrow = 2)
m
m[2,] # buscar linha
m[,1] # buscar coluna

  # Dataframe

dia_semana = c(18:22)
nome_dia = c("Seg", "Ter", "Quar", "Quin", "Sex")
ano = c(2023,2023,2023,2023,2023)

df <- data.frame(dia_semana, nome_dia, ano)
df
df$nome_dia
