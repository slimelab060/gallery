#!/bin/bash
read -n1 -p "インストール開始してもよろしいですか? (y/N): " yn
if [[ $yn = [yY] ]]; then

  echo "インストールを開始します。"
  yes | sudo add-apt-repository ppa:jonathonf/vim
  yes | sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash
  yes | sudo apt update
  yes | sudo apt upgrade
  yes | sudo apt install vim python3 python3-pip cmdtest nodejs git neofetch default-jdk
  yes | sudo pip3 install pynvim
  curl -fLo ~/.vimrc https://raw.githubusercontent.com/Slime-Lab060/Gakusei_Management/master/vim/.vimrc
  curl -fLo ~/update.sh https://raw.githubusercontent.com/Slime-Lab060/Gakusei_Management/master/vim/update.sh
  curl -fLo ~/uninstall.sh  https://raw.githubusercontent.com/Slime-Lab060/Gakusei_Management/master/vim/uninstall.sh
  vim

else

  echo "キャンセルしました。"

fi
