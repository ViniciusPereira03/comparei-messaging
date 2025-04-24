# comparei-messaging

Este repositório contém o serviço de mensageria baseado em **Redis** para comunicação **Pub/Sub** entre microserviços do projeto Comparei. Aqui você encontrará o `docker-compose.yml` para subir o container do Redis e o script `run.sh` para automatizar a criação da rede Docker compartilhada e a inicialização do serviço.

---

## 📦 Estrutura do Repositório

```text
comparei-messaging/
├── docker-compose.yml   # Definição do serviço Redis e rede externa
├── run.sh               # Script para criar a rede e subir o Redis
└── README.md            # Documentação (este arquivo)
```

---

## 🚀 Pré-requisitos

- [Docker](https://docs.docker.com/get-docker/) instalado
- [Docker Compose](https://docs.docker.com/compose/install/) instalado
- Acesso a linha de comando/terminal

---

## 🔧 Configuração e Uso

1. **Clone o repositório**

   ```bash
   git clone https://github.com/ViniciusPereira03/comparei-messaging.git
   cd comparei-messaging
   ```

2. **Torne o script executável**

   ```bash
   chmod +x run.sh
   ```

3. **Execute o script**

   ```bash
   ./run.sh
   ```

   O script executa as seguintes etapas:

   1. Verifica se a rede Docker `comparei_net` existe;
   2. Se não existir, cria a rede;
   3. Sobe o container Redis em modo destacado (`-d`);
   4. Mensagens de log indicam o progresso.

4. **Verifique**

   ```bash
   docker ps
   ```

   Você deverá ver o contêiner `redis_messaging` rodando na rede `comparei_net`.

---

> Criado por Vinícius Gonçalves Pereira – [GitHub](https://github.com/ViniciusPereira03)

