#!/bin/bash

echo "Telechargement des scripts requis"
cd ~
git clone https://github.com/RomainVP/cours_linux
mv cours_linux/projet_4/test.py ~
rm -fr cours_linux 

pip install requests
pip install pillow


