#!/bin/bash
mkdir -p ~/Punto_F
echo "Mi IP publica es: $(curl -s ifconfig.me || hostname -I | awk '{print $1}')" > ~/Punto_F/Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> ~/Punto_F/Filtro_Avanzado.txt
echo "El procesador es: $(lscpu | grep 'Model name:' | awk -F: '{print $2}' | sed 's/^[ \t]*//')" >> ~/Punto_F/Filtro_Avanzado.txt
