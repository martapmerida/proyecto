#!/bin/bash
# Script 1: Inicialización de entorno y generación de clave SSH

set -e

echo "🔐 Generando clave SSH..."

sudo su -c '
cd /home/ubuntu/
mkdir -p develop
cd develop/
ssh-keygen -t ed25519 -C "martapmerida@gmail.com" -f ~/.ssh/id_ed25519 -N ""
cat ~/.ssh/id_ed25519.pub
'

echo "✅ Clave SSH generada. Añádela a GitHub."