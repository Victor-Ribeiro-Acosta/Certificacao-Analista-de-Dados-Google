
# Instalar readr e readxl

readxl_example("geometry.xlsx")   # obter caminho para dados de experimentação

geometrias = read_excel(readxl_example("geometry.xlsx"))  # importar planilha de experimentação

view(geometrias) # vizualizar dados


df = read_excel(readxl_example("datasets.xlsx"))  # importar planilha
str(df) # Analisar formatos de dados na planilha
