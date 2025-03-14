#!/bin/bash

# Função para verificar se um comando foi bem-sucedido
check_command() {
  if [ $? -ne 0 ]; then
    echo "Erro ao executar: $1"
    exit 1
  fi
}

echo "Criando as imagens......."
docker build -t rodrinesco/projeto-backend:1.0 backend/.
check_command "docker build -t rodrinesco/projeto-backend:1.0 backend/."

docker build -t rodrinesco/projeto-database:1.0 database/.
check_command "docker build -t rodrinesco/projeto-database:1.0 database/."

echo "Iniciando o push das imagens no DockerHub......."
docker push rodrinesco/projeto-backend:1.0
check_command "docker push rodrinesco/projeto-backend:1.0"

docker push rodrinesco/projeto-database:1.0
check_command "docker push rodrinesco/projeto-database:1.0"

echo "Iniciando o Minikube..."
minikube start
check_command "minikube start"

echo "Criando serviços no cluster dentro do Minikube......."
kubectl apply -f ./services.yml
check_command "kubectl apply -f ./services.yml"

echo "Criando deployments no cluster dentro do Minikube......."
kubectl apply -f ./deployment.yml
check_command "kubectl apply -f ./deployment.yml"

echo "Verificando pods..."
kubectl get pods
check_command "kubectl get pods"

echo "Verificando serviços..."
kubectl get services
check_command "kubectl get services"

echo "Verificando PersistentVolumeClaims..."
kubectl get pvc
check_command "kubectl get pvc"

# Esperar até que o serviço php-loadbalancer esteja disponível
echo "Aguardando o serviço php-loadbalancer estar disponível..."
for i in {1..10}; do
  minikube service php-loadbalancer --url && break
  echo "Tentativa $i: Serviço php-loadbalancer ainda não disponível, aguardando..."
  sleep 10
done
check_command "minikube service php-loadbalancer --url"

echo "Script executado com sucesso!"