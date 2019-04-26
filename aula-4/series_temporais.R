#AirPassengers
AirPassengers

plot(AirPassengers)


# decomposição da serie temporal
dec = decompose(AirPassengers)


dec$seasonal
dec$trend
dec$random


# previsão em series temporais
# extrapolação

mean(AirPassengers)







