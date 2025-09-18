#!/bin/bash
set -e

REPO_NAME="scripts-comuns"

echo "Iniciando instalação do repositório: $REPO_NAME"

check_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo >&2 "Erro: '$1' não encontrado. Por favor, instale e execute novamente."
    exit 1
  }
}

echo "Verificando dependências básicas..."
check_command git
check_command curl

echo "Configurando scripts comuns..."

# Exemplo: tornar scripts executáveis
find ./ -name "*.sh" -exec chmod +x {} \;

echo "Instalação do $REPO_NAME concluída."