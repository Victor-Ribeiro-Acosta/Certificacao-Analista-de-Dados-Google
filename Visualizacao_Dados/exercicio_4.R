
head(df_booking)
glimpse(df_booking)

# Criar gráfic de barras para segmentos de mercado e tipo de hotel
ggplot(data = df_booking) + geom_bar(aes(x=hotel, fill = market_segment))

# usar facetas para segmentar o gráfico
ggplot(data = df_booking) + geom_bar(aes(x=hotel, fill = hotel)) +
  facet_wrap(~market_segment)


# filtrar dados para gráficos

online_ta_c_hotel <- df_booking %>% filter(
  hotel == "City Hotel" & market_segment == "Online TA")

ggplot(data = online_ta_c_hotel) + 
  geom_point(aes(x = lead_time, y = children))

