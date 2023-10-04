
df_booking <- read_csv("hotel_bookings.csv")

g <- ggplot(data = df_booking) + geom_bar(aes(x=market_segment)) + 
  facet_wrap(~hotel)

#Adicionando titulo
g + labs(title = "Segmentos de Mercado Mais Atendidos por Hotel")

# Adicionando subtitulo e rodapé
min_data = min(df_booking$arrival_date_year)
max_data = max(df_booking$arrival_date_year)

g + theme(axis.text.x = element_text(angle=45)) +
  labs(title = "Segmentos de Mercado Mais Atendidos por Hotel",
       caption = paste0("Período: ", min_data," - ", max_data))

# Mudando rótulos de x e y
g + theme(axis.text.x = element_text(angle=45)) +
  labs(title = "Segmentos de Mercado Mais Atendidos por Hotel",
       caption = paste0("Período: ", min_data," - ", max_data),
       x = "Segmentos de Mercado",
       y = "Total de reservas")

# Salvar
ggsave("Total_Resvas_Por_SM.png")

# Redimensionando figura
ggsave("Total_Resvas_Por_SM.png", height = 7, width = 13)

