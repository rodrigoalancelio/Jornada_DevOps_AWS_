#!/bin/bash

# Configurações específicas para os nós trabalhadores
# Juntar-se ao Docker Swarm
# O comando abaixo deve ser ajustado com o token e IP do nó mestre
sudo docker swarm join --token <token> 10.25.10.100:2377
