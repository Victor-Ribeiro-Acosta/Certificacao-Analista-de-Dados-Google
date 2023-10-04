
library(skimr)
library(tidyverse)
library(janitor)

df_booking <- read_csv("hotel_bookings.csv")

# Resumo e analise exploratoria
head(df_booking)
view(df_booking)


# Quantas colunas existe no conjunto de dados?

colnames(df_booking)
# Resposta: 32

# 2. A variável 'arrival_date_month' é um dado do tipo chr ou caractere:

glimpse(df_booking)
# Resposta: Sim

# Organizando Dados


# Qual foi o maior intervalo de tempo de antecedencia para uma reserva

arrange(df_booking, -lead_time) # ordenando do maior para o menor
# Resposta: 737

# Obtendo valor máximo e mínimo

temp_max <- max(df_booking$lead_time)
temp_min <- min(df_booking$lead_time)

temp_max
temp_min

# Obtendo Média

mean(df_booking$lead_time)

# Qual o tempo médio de espera?
#Resposta: 104.01

# Qual o tempo médio de espera para os hoteis da cidade?

df_booking %>% filter(hotel == "City Hotel") %>% summarize(mean = mean(lead_time))

hotel__cidade <- df_booking %>% filter(hotel == "City Hotel")
mean(hotel_cidade$lead_time)

# Criando Resumo estatístico

df_booking %>% group_by(hotel) %>% summarize(media = mean(lead_time),
                                             temp_max = max(lead_time),
                                             temp_min = min(lead_time))

# Quem tem a maior média de tempo?
# Resposta: hotel city
