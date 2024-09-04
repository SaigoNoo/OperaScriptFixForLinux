#!/bin/bash

echo "Voulez-vous la version 0.91.0 ? (o/n)"
read choice

if [ "$choice" == "n" ]; then
    echo -e "Quelle version souhaitez-vous : " 
    read version
else
    version="0.91.0"
fi

echo "Réparation de Opera For Linux"
echo "Version sélectionnée : $version"

# Téléchargement et installation du module de réparation
wget "https://github.com/nwjs-ffmpeg-prebuilt/nwjs-ffmpeg-prebuilt/releases/download/$version/$version-linux-x64.zip"
unzip "$version-linux-x64.zip"
sudo mv libffmpeg.so /usr/lib/x86_64-linux-gnu/opera/lib_extra/
rm "$version-linux-x64.zip"

echo "Réparation effectuée !"
echo "Assurez-vous que Opera soit fermé afin de charger le module réparé !"
