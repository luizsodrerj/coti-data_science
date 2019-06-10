from pybrain.structure import FeedForwardNetwork
from pybrain.structure import LinearLayer
from pybrain.structure import BiasUnit
from pybrain.structure import SigmoidLayer
from pybrain.structure import FullConnection

# criação da rede neural
rede = FeedForwardNetwork()

# Camada de entrada LinearLayer
camadaEntrada = LinearLayer(2)


# Criação da camada oculta com 3 neuronios
camadaOculta = SigmoidLayer(3)


# Criação da saida com apenas um neuronio
camadaSaida = SigmoidLayer(1)

# Criação das unidades de Bias
bias1 = BiasUnit()
bias2 = BiasUnit()


# construindo a rede neural
rede.addModule(camadaEntrada)
rede.addModule(camadaOculta)
rede.addModule(camadaSaida)
rede.addModule(bias1)
rede.addModule(bias2)

# Ligação entre entrada e camada oculta
# FullConnection -> ligação de um neuronio
# com todos os outros da outra camada
entradaOculta = FullConnection(camadaEntrada, camadaOculta)
ocultaSaida = FullConnection(camadaOculta, camadaSaida)
biasOCulta = FullConnection(bias1, camadaOculta)
biasSaida = FullConnection(bias2, camadaSaida)

# Construir a rede neural 
rede.sortModules()

print(rede)

# Pesos aleatorios gerados na camada de entrada
print(entradaOculta.params)

# Camada oculta para a camada de saida
print(ocultaSaida.params)

# bias camada oculta
print(biasOCulta.params)

# print camada de saida
print(biasSaida.params)



















































