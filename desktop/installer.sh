#!/bin/bash

echo "The installer is going on!"

echo "Backup your sources.list"

mv /ept/apt/sources.list /etc/apt/sources.list_backup

echo "# 默认注释了源码仓库，如有需要可自行取消注释 \
deb https://mirrors.geekpie.org/ubuntu/ xenial main restricted universe multiverse \
# deb-src https://mirrors.geekpie.org/ubuntu/ xenial main restricted universe multiverse \
deb https://mirrors.geekpie.org/ubuntu/ xenial-updates main restricted universe multiverse \
# deb-src https://mirrors.geekpie.org/ubuntu/ xenial-updates main restricted universe multiverse \
deb https://mirrors.geekpie.org/ubuntu/ xenial-backports main restricted universe multiverse \
# deb-src https://mirrors.geekpie.org/ubuntu/ xenial-backports main restricted universe multiverse \
deb https://mirrors.geekpie.org/ubuntu/ xenial-security main restricted universe multiverse \
# deb-src https://mirrors.geekpie.org/ubuntu/ xenial-security main restricted universe multiverse" > /etc/apt/sources.list

apt update

apt -y upgrade

apt install -y fish git vim screenfetch tmux curl guake lm-sensors i3 i3lock i3blocks

screenfetch -E

apt  install -y xbacklight fbterm dolphin pacmanfm cmus fortune rofi ibus-rime librime-data-double-pinyin librime-data-emoji 

sudo add-apt-repository -y ppa:papirus/papirus
sudo add-apt-repository -y ppa:fsgmhoward/shadowsocks-libev
sudo add-apt-repository -y ppa:hda-me/proxychains-ng
sudo add-apt-repository -y sudo add-apt-repository ppa:kubuntu-ppa/backports
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

apt  update

apt install -y shaodwsocks-libev simple-obfs code proxychains-ng ubuntu
apt install -y kubuntu-desktop inxi morse
apt install -y --install-recommends arc-kde


echo "Input your name"
read name
useradd -m -s /usr/bin/fish $name

passwd $name

echo "$name ALL=(ALL:ALL) ALL" >> /etc/sudoers


echo "新用户建立完毕！请您享用！"

