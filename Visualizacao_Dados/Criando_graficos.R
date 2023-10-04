
# Gráfico de dispersão
ggplot(data=penguins, mapping = aes(x=bill_length_mm, y=bill_depth_mm)) + 
  geom_point()

# Gráfico de barras
ggplot(data=diamonds, aes(x=cut, fill=cut)) + geom_bar()

# Grafico de linhas

ggplot(data=penguins, mapping = aes(x=flipper_length_mm,    
                                    y=body_mass_g,
                                    linetype = species)) + # linetype adiciona uma linha para cada item da categoria
  geom_smooth()

