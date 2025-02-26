#!/bin/bash

# Configurações específicas para o nó mestre
# Inicializar o Docker Swarm
sudo docker swarm init --advertise-addr 10.25.10.100
