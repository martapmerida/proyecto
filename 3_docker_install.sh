#!/bin/bash
# Script 3: Instalación de Docker

set -e

echo "🐳 Instalando Docker..."

sudo apt update
sudo apt install -y ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "🧪 Verificando instalación..."

sudo docker run hello-world

echo "👤 Añadiendo usuario actual al grupo docker..."

sudo usermod -aG docker $USER

echo "✅ Docker instalado. Reinicia sesión o ejecuta 'newgrp docker'."
