
df_booking <- read_csv("hotel_bookings.csv")

# Resumir e entender os dados
head(df_booking)
glimpse(df_booking)
skim_without_charts(df_booking) # resumo estatístico avançado


# Extrair dados
trimmed <- df_booking %>% select("hotel", "is_canceled", "lead_time")
head(trimmed)

trimmed <- trimmed %>% rename(tipo_hotel = hotel, cancelados = is_canceled)
head(trimmed)


df_datas <- df_booking %>% select(arrival_date_year, arrival_date_month) %>%
  unite(data_mes_ano, c("arrival_date_month","arrival_date_year"), sep = " ")

df_total <- df_booking %>% mutate(total = (adults + children + babies))


estatisticas = trimmed %>% summarize( num_cancelamentos = sum(cancelados), 
                                      temp_med_espera = mean(lead_time))