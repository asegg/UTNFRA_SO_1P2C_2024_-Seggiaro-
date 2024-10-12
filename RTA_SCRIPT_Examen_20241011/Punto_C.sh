#!/bin/bash
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
useradd -m -s /bin/bash -c "Usuario A1"  -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')"-G p1c2_2024_gAlumno p1c2_2024_A1
useradd -m -s /bin/bash -c "Usuario A2" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')"-G p1c2_2024_gAlumno p1c2_2024_A2
useradd -m -s /bin/bash -c "Usuario A3" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
useradd -m -s /bin/bash -c "Usuario prof" -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod -R 775 /Examenes-UTN/profesores
#crea archivo "validar.txt"
sudo su -c "whoami > /Examenes-UTN/alumno_1/validar1.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar1.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar1.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar1.txt" p1c2_2024_P1


