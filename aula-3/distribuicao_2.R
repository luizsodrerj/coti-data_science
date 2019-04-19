# Distribuição normal
# calculo da probabilidade


# prob de encontrar um objeto menor q 6kg
# 6 objeto, media 8, dp 2
pnorm(6, 8, 2)

pnorm(8, 8, 2)

# maior que 6 kilos
pnorm(6, 8, 2, lower.tail = F)
pnorm(10, 8, 2, lower.tail = F)
pnorm(10, 8, 2)


# prob menos 6 kilos ou mais 10 kilos
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = F)

  
# prob de encontar objeto 
# menos 10 kg e mais de 8 kg
pnorm(10, 8, 2) - pnorm(8, 8, 2, lower.tail = F)  

  
  
  
  
  
  
  
  
