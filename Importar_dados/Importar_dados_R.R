
data("diamonds")

head(diamonds)  #primeiras linhas

str(diamonds)  # visualizar colunas e tipos de dados

glimpse(diamonds) # visualizar colunas e tipos de dados

# Converter data frame para tibbles:

as_tibble(diamonds) # obtemos as 10 primeiras linhas e seus respectivos tidos de dados logo abaixo do titulo
