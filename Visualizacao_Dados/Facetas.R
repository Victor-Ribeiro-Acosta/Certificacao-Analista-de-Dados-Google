
# facet+wrap
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
                           color = species)) +
  facet_wrap(~island)


#facet_grid
ggplot(data = penguins) + 
  geom_bar(mapping = aes(x = sex, color = sex, fill = sex)) +
  facet_grid(species~island)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, 
                           color = sex, shape=sex)) +
  facet_wrap(species~island)

