#!/usr/bin/env bash
set -e

# nome da network compartilhada
NETWORK_NAME="comparei_net"

echo "🔍 Verificando se a network '${NETWORK_NAME}' existe..."
if docker network inspect "${NETWORK_NAME}" >/dev/null 2>&1; then
  echo "✅ Network '${NETWORK_NAME}' já existe."
else
  echo "⚙️  Network '${NETWORK_NAME}' não encontrada. Criando..."
  docker network create "${NETWORK_NAME}"
  echo "✅ Network '${NETWORK_NAME}' criada."
fi

echo "🚀 Iniciando o serviço Redis..."
docker compose up -d

echo "🎉 Feito! Redis rodando na rede '${NETWORK_NAME}'."
