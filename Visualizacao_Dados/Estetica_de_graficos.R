
# Gráficos com mais de uma linha
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,
                            color = species, linetype = species))

# Gráfico de barras
ggplot(data = diamonds, mapping = aes(x=cut, fill = clarity)) + geom_bar()


# Gráfico de dispersão
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm,
                                                   y = body_mass_g,
                                                  color = species))


ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm,
                                                   y = body_mass_g,
                                                   color = species,
                                                   shape = species))