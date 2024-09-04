# HowTo

`docker compose up -d`

Se a VPN exige certificado, configure o volume no arquivo `docker-compose.yaml` e utilize o argumento `-c` no comando do openconnect para especificar

`docker compose exec openconnect /run.sh <IP> [-c /cert/cert.pfx]`

