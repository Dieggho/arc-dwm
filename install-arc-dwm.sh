#!/usr/bin/bash


echo "Installing dwm"
make -C dwm-src/
sudo make install -C dwm-src/
sudo mv dwm.desktop /usr/share/xsessions/
cp -r .dwm/ ~/
chmod +x ~/.dwm/*

make -C st-src/
make -C slstatus/
sudo make install -C st-src/
sudo make install -C slstatus/
cp st-src/st.desktop ~/.local/share/applications/

echo "################################################################"
echo "####        Dwm has been successfully installed        ####"
echo "################################################################"
