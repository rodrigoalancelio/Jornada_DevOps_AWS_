# 🚀 Deploy de Aplicação em Cluster Kubernetes  

## 🎯 Entendendo o Desafio  

Este projeto faz parte do desafio proposto pela **DIO (Digital Innovation One)** e tem como objetivo consolidar conhecimentos em **Kubernetes, Docker e orquestração de containers**. O desafio é criar um ambiente Kubernetes estruturado para o deploy de uma aplicação completa, garantindo escalabilidade, gerenciamento eficiente e alta disponibilidade.  

A proposta aqui é **reproduzir, adaptar ou até mesmo aprimorar** a solução apresentada ao longo do curso. Além de ser um excelente exercício prático, esse projeto vai agregar valor ao meu portfólio no GitHub e pode ser um diferencial em entrevistas técnicas. 💡  

## 📂 Estrutura do Repositório  

Este repositório contém todos os arquivos necessários para a implementação do projeto, incluindo:  

- **`backend/`** → Código-fonte da aplicação backend.  
- **`database/`** → Scripts SQL para a configuração do banco de dados.  
- **`deployment.yml`** → Configuração do **Deployment** no Kubernetes.  
- **`services.yml`** → Configuração dos **Serviços** no Kubernetes.  
- **`script.sh`** → Script para automação do build da imagem Docker, push para o Docker Hub e deploy no Minikube.  
- **`README.md`** → Documentação do projeto.  

## 🚀 Como Executar o Projeto  

### 🛠️ Pré-requisitos  

Para rodar o projeto localmente, é necessário ter instalado:  

- **Docker** 🐳  
- **Minikube** ⛵  
- **kubectl** 🔧  

### 📌 Passo a Passo  

1️⃣ Clone o repositório:  

```sh
git clone https://github.com/rodrigoalancelio/k8s-projeto1.git
cd k8s-projeto1
```
  
2️⃣ Inicie o Minikube:  

```sh
minikube start
```
  
3️⃣ Construa a imagem Docker e faça o push para o Docker Hub:  

```sh
./script.sh
```
  
4️⃣ Aplique os arquivos de configuração do Kubernetes:  

```sh
kubectl apply -f deployment.yml
kubectl apply -f services.yml
```
  
5️⃣ Verifique se os pods estão rodando:  

```sh
kubectl get pods
```
  
6️⃣ Acesse a aplicação via Minikube:  

```sh
minikube service nome-do-servico
Agora é hora de explorar os conceitos na prática, testar novas configurações e aprimorar o projeto! **Bora codar? 🚀**

## 🌐 Repositório Base  

O projeto foi baseado no repositório original do [Denilson Bonatti](https://github.com/denilsonbonatti/k8s-projeto1-app-base), que serviu como referência para estruturar o ambiente Kubernetes.  

Agora é hora de explorar os conceitos na prática, testar novas configurações e aprimorar o projeto! **Bora codar? 🚀**