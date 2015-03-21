#! /bin/bash

#Download Elementary OS from here:
#http://sourceforge.net/projects/elementaryos/files/stable/

#First you update your system
#sudo apt-get update && sudo apt-get dist-upgrade

#Install Google Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#sudo apt-get update
#sudo apt-get install google-chrome-stable

#####If you prefer Firefox
#Install Firefox
sudo apt-get install firefox firefox-locale-fr

#Clean-up System (remove unnecessary ElementaryOS software)
sudo apt-get purge midori-granite
sudo apt-get purge noise
sudo apt-get purge software-center
sudo apt-get purge scratch-text-editor
#sudo apt-get purge bluez
#sudo apt-get purge modemmanager
sudo apt-get purge empathy
#sudo apt-get remove --purge indicator-messages
sudo apt-get purge maya-calendar
sudo apt-get purge geary
#sudo apt-get purge shotwell
sudo apt-get purge totem

sudo apt-get autoremove
sudo apt-get autoclean

#Install gedit (Text Editor)
sudo apt-get install gedit gedit-plugins

# Install VLC
sudo apt-get install vlc

#Install File Compression Libs
sudo apt-get install unace unrar zip unzip xz-utils p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

#Install Ubuntu Restricted Extras
sudo apt-get install ubuntu-restricted-extras

# Install Pinta Photo Editor
#sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
#sudo apt-get update
#sudo apt-get install pinta

# Install Image Viewer
 sudo apt-get install

#Install Elementary OS extras
sudo apt-add-repository ppa:versable/elementary-update
sudo apt-get update
 ## Elementary Tweaks (System prefs)
sudo apt-get install elementary-desktop elementary-tweaks
## Elementary Themes
sudo apt-get install elementary-blue-theme elementary-champagne-theme elementary-colors-theme elementary-dark-theme elementary-harvey-theme elementary-lion-theme elementary-milk-theme elementary-plastico-theme elementary-whit-e-theme
## Elementary Icons
sudo apt-get install elementary-elfaenza-icons elementary-emod-icons elementary-enumix-utouch-icons elementary-nitrux-icons elementary-taprevival-icons
## Plank Themes
sudo apt-get install elementary-plank-themes
## Wingpanel Slim && Super Wingpanel
sudo apt-get install wingpanel-slim indicator-synapse
#sudo apt-get install super-wingpanel

###################
#if not installed
#Install the Dynamic Kernel Module Support Framework
##### sudo apt-get install dkms
##### mkdir kernel
##### cd kernel
####################

#Install Kernel 3.12.2 on 32 Bit
#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12.2-trusty/linux-headers-3.12.2-031202-generic_3.12.2-031202.201311291538_i386.deb
#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12.2-trusty/linux-headers-3.12.2-031202_3.12.2-031202.201311291538_all.deb
#wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.12.2-trusty/linux-image-3.12.2-031202-generic_3.12.2-031202.201311291538_i386.deb

#sudo dpkg -i *.deb

#cd ..
#rm -rf kernel
#Reboot!

# Install Zotero for Linux
#wget https://raw.github.com/smathot/zotero_installer/master/zotero_installer.sh \    -O /tmp/zotero_installer.sh
#chmod +x /tmp/zotero_installer.sh
#sudo /tmp/zotero_installer.sh

#Install Qnotero for Linux (Zotero toolbar companion)
#sudo add-apt-repository ppa:smathot/cogscinl
#sudo apt-get update
#sudo apt-get install qnotero

### Don't forget to install the ZotFile plugin manually from www.zotfile.com

#### Install some Handy Indicator Applets ####
#Install CPU Freq Indicator
#sudo apt-get install indicator-cpufreq
### copy icon files to elementary theme pack
#sudo cp /usr/share/icons/ubuntu-mono-dark/status/22/indicator-cpufreq* /usr/share/icons/elementary/status/22/
#sudo gtk-update-icon-cache -f /usr/share/icons/elementary
#killall super-wingpanel
#Install Multiload Indicator
#sudo apt-get install indicator-multiload
#Install Weather Indicator
#sudo apt-get install weather-indicator

#Install Skype
#sudo apt-add-repository "deb http://archive.canonical.com/ubuntu/ precise partner"
#sudo apt-get update && sudo apt-get install skype

#Install Libre Office (most recent)
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get install libreoffice
#Install LibreOffice themes
sudo apt-get install libreoffice-style-human libreoffice-style-oxygen libreoffice-style-crystal libreoffice-style-sifr libreoffice-style-tango libreoffice-style-galaxy
#Install PDF editing
sudo apt-get install libreoffice-pdfimport
##Install Support for FR
sudo apt-get install hyphen-fr mythes-fr libreoffice-help-fr libreoffice-l10n-fr myspell-fr


#Remove extra LibreOffice icons from Slingshot Start Menu (leaves only main 'LibreOffice')
cd /usr/share/applications
sudo rm libreoffice-base.desktop libreoffice-draw.desktop libreoffice-impress.desktop libreoffice-writer.desktop libreoffice-calc.desktop libreoffice-math.desktop

sudo apt-get install openjdk-7-jre openjdk-7-jre-headless openjdk-7-jre-lib
sudo apt-get purge openjdk-6-jre openjdk-6-jre-headless openjdk-6-jre-lib
sudo apt-get autoremove

#Install the Clementine Music Player
#sudo add-apt-repository ppa:me-davidsansome/clementine
#sudo apt-get update
#sudo apt-get install clementine

#Install the latest git Version
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
#sudo apt-get dist-upgrade
sudo apt-get install git

# Change start menu to open with ONLY the Super key, instead of Super + Space
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['Super_L','F2']"
### to change back
# gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['space', 'F2']"

#Make sure everything is up to date all over again
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean
