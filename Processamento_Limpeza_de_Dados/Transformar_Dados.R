
nomes <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman",
           "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan",
           "Darius Berry", "Claudia Garcia")

cargos <- c("Profissional", "Programador", "Gerencia", "Administrativo",
            "Desenvolvedor", "Programador", "Gerencia", "Administrativo", 
            "Desenvolvedor", "Programador")

id <- c(1:10)

funcionarios <- data.frame(id, nomes, cargos)

# Dividir texto
funcionarios <- separate(funcionarios, nomes, into=c("nome","sobrenome"), sep = " ")
head(funcionarios)

# Unir texto
funcionarios <- unite(funcionarios, "Nome", nome, sobrenome, sep = " ")
head(funcionarios)
