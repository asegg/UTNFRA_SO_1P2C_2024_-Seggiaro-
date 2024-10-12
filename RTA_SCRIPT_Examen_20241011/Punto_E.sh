#!/bin/bash
cd RTA_ARCHIVOS_Examen_20241008
cat /proc/meminfo | grep MemTotal > Filtro_Basico.txt
sudo dmidecode -t chassis >> Filtro_Basico.txt


