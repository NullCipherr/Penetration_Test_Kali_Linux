#!/bin/bash

# Lista de dominios oui endereços IP, para escanear
DOMINIOS=("hackthissite.org" "testphp.vulnweb.com")

# Local onde os resultados serão salvos
PASTA_RESULTADOS="resultados_nmap"

# Criar pasta para os resultados se ela não existir
mkdir -p "$PASTA_RESULTADOS"

echo -e "Iniciando a varredura dos dominios com nmap...\n"

# Loop para escanear cada dominio
for dominio in "${DOMINIOS[@]}"; do
	echo -e "Realizando o scan do dominio => $dominio \n"
	# Realiza o nmap e salva em um arquivo .txt dentro da pasta de resultados.
	nmap -v -A "$dominio" > "$PASTA_RESULTADOS/$dominio.txt"

	# Imprime o fim do scan do dominio
	echo -e "Scan do dominio $dominio realizado com sucesso !! \n"
done
