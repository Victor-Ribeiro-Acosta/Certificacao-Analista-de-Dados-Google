
data("penguins")
view(penguins)


ggplot(data=penguins) + geom_point(mapping = aes(x= flipper_length_mm, 
                                                 y= body_mass_g))
