#!/bin/bash
cd RTA_Archivos_Examen_
echo "Mi IP publica es " >> Filtro_Avanzado.txt
curl -s ifconfig.me >> Filtro_Avanzado.txt
echo "Mi usuario es: " >> Filtro_Avanzado.txt | whoami >> Filtro_Avanzado.txt
echo "El Hash de mi usuario es: " >> Filtro_Avanzado.txt
sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}' >> Filtro_Avanzado.txt
git remote get-url origin >> Filtro_Avanzado.tx

