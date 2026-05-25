#!/bin/bash
sudo groupadd p1c1_2026_Todos
sudo useradd -m -s /bin/bash -g p1c1_2026_Todos p1c1_2026_u2
echo "p1c1_2026_u2:clave1" | sudo chpasswd
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1
sudo chown -R :p1c1_2026_Todos /datos/
sudo chmod -R 771 /datos/
su -c "id >> /datos/validar1.txt" p1c1_2026_u2
