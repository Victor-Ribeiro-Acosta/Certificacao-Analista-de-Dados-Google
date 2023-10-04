
ggplot(data = df_booking) + geom_point(
  mapping = aes(x=lead_time, y=children))


# A parte interessada dona de um hotel deseja fazer uma promoção para hospedes
#com maior quantidade de finais de seman reservado, ele acredita que hospedes sem filhos
#tendem a reservar por mais finais de semana

ggplot(data = df_booking) + geom_point(
  mapping = aes(x=stays_in_weekend_nights, y = children))

#O que você descobriu? A sua parte interessada está correta?
  #Resposta: sim, hospedes sem filhos reservaram por mais finais de semana

#Que outros tipos de gráficos você poderia usar para mostrar essa relação?
  #Poderia usar gráficos de barras para demonstrar um ranking
