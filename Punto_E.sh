#!/bin/bash
mkdir -p ~/Punto_E
free -h | grep "Mem:" | awk '{print "Total de memoria RAM: " $2}' >Punto_E/Filtro_basico.txt
lscpu | grep "Model name:" | awk -F: '{print "Modelo y fecuencia: " $2} | sed 's/^[ \t]*//' >> ~/Punto_E/Filtro_basico.txt
