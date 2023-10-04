
data("penguins")

ggplot(data = penguins %>% filter(species == "Adelie")) + 
  geom_point(aes(x = flipper_length_mm, y = body_mass_g, color = sex)) +
  labs(title = "Relação entre comprimento de Nadadeira e Peso corporal dos Pinguins") +
  annotate("text", x = 205, y = 170, label = "Adelie")

