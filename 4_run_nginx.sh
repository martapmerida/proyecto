#!/bin/bash
# Script 4: Construcción y ejecución de imagen Docker

set -e

echo "🔧 Construyendo imagen Docker..."

docker build -t nginx-proyecto .

echo "🚀 Ejecutando contenedor en puerto 8080..."

docker run -d -p 8080:80 nginx-proyecto

echo "🌐 Probando conexión..."

curl http://localhost:8080 || echo "⚠️ El contenedor aún no está listo."

echo "✅ Contenedor en ejecución en http://localhost:8080"