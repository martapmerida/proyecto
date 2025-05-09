#!/bin/bash
# Script 2: Configuración de Git y clonación de repositorio

set -e

echo "⚙️ Configurando Git..."

git config --global user.email "martapmerida@gmail.com"
git config --global user.name "Marta"

echo "📥 Clonando repositorio..."

git clone git@github.com:martapmerida/proyecto.git
cd proyecto

echo "✅ Repositorio clonado."
