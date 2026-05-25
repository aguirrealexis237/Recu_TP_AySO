#!/bin/bash
./usuario.sh
sudo chown -R p1c1_2026_u1:p1c1_2026_g1 /datos/
sudo chmod -R 750 /datos/
su -c "whoami" > /datos/validar1.txt" p1c1_2026_u1
