
head(df_booking)
colnames(df_booking)

# distribuições de reservas
ggplot(data = df_booking) + geom_bar(
  mapping = aes(x = distribution_channel,
                fill = distribution_channel,
                color = distribution_channel))

# Qual distribuição tem maior frequencia?
  # Resposta: A TA/TO

#######################################################
# Customizando cores
ggplot(data = df_booking) + geom_bar(
  mapping = aes(x = distribution_channel,
                fill = deposit_type,
                color = deposit_type))


ggplot(data = df_booking) + geom_bar(
  mapping = aes(x = distribution_channel,
                fill = market_segment,
                color = market_segment))

#######################################################
# Facetas
ggplot(data = df_booking) + 
  geom_bar(mapping = aes(x = distribution_channel, 
                         fill = distribution_channel)) +
  
  facet_wrap(~deposit_type) + 
  theme(axis.text.x = element_text(angle=45))
                                        



ggplot(data = df_booking) + 
  geom_bar(mapping = aes(x = distribution_channel, 
                         fill = distribution_channel)) +
  
  facet_wrap(~market_segment) + 
  theme(axis.text.x = element_text(angle=45))