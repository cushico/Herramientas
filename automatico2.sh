#!/bin/bash
function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

echo "     hola luis, un gusto saludarte de nuevo"
echo "      tu dirección up es la siguiente".
ip=$(ip route | awk '/dhcp/ {print $5, $7, $9}')
echo $ip
pause
clear
echo "     tu ip es: $ip"
echo 
echo "la dirección ip de tu victima está dentro de tu red, o fuera de ella"
echo "escane su red a ver si tienes acceso a ella" 
echo "ingresa la red ejemplo 192.168.10.0/24"
read -p "ingresa la red: " RED
pause
clear
./escaneo-dispositivos-cercanos $RED
pause

echo ""
echo "   EMPEZEMOS, INGRESA LA IP DE LA MÁQUINA A COMPROBAR"
read -p "Ingresa la ip: " IP
read -p "Ingresa el nombre de la máquina: " nombre_maquina

mkdir $nombre_maquina
./nmap $IP $nombre_maquina
pause





clear
#vulnerabilidad por puerto
echo -e "Creando archivo de vulnerabilidades por puertos"
echo "vulnerabilidad por puerto" > v_x_puerto.txt
#FTP
PORT_ftp=$(cat puertos.txt |grep ftp| grep open |grep tcp | awk '{print $1}' FS=/ | xargs | tr ' ' ',')


echo "Finalizado.!"
pause
#ls -la
