# Automatización del Entorno de Desarrollo

Este repositorio contiene una serie de scripts Bash divididos en etapas para preparar un entorno de desarrollo en Ubuntu, incluyendo configuración SSH, clonación de repositorio, instalación de Docker y despliegue de un contenedor `nginx`.

---

## 📁 Estructura del Proyecto

- `1_init_ssh.sh`: Crea la clave SSH y la muestra.
- `2_git_clone.sh`: Configura Git y clona el repositorio.
- `3_docker_install.sh`: Instala Docker y lo configura.
- `4_run_nginx.sh`: Construye y ejecuta un contenedor Docker.
- `5_k3s.sh`: Instala K3s y lo configura.
- `6_argocd.sh`: Instala Argocd y lo configura.

---

## 🚀 Instrucciones de Uso

> ⚠️ Todos los scripts deben ejecutarse desde el usuario adecuado y con permisos suficientes (algunos requieren `sudo`).

1. Clona este repositorio en tu máquina Ubuntu:

```bash
git clone git@github.com:martapmerida/proyecto.git
cd proyecto
chmod +x *.sh  # Da permisos de ejecución a todos los scripts
