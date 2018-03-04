#!/usr/bin/fish



cd ~

# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

git  clone https://github.com/nerdneilsfield/i3-config.git ~/.i3

mkdir source 

cd source 

git clone https://github.com/nerdneilsfield/rime.git

cd rime

make install 

cd ~

mkdir app

cd app

wget https://file.dengqi.org/telegram/Linux/tsetup.1.2.6.amd64.tar.xz

tar xvf tsetup.1.2.6.amd64.tar.xz

#sudo ln -sf $PWD/Telegram /usr/bin/telegram

mkdir -p ~/.bin




ln -sf $HOME/app/Telegram/Telegram ~/.bin/telegram

echo "set PATH $HOME/.bin $PATH" >> ~/.config/fish/config.fish


echo "set RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static" >> ~/.config/fish/config.fish 
echo "set RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup" >> ~/.config/fish/config.fish

source  ~/.config/fish/config.fish

curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y

echo "set PATH $HOME/.cargo/bin $PATH" >> ~/.config/fish/config.fish

wget https://mirrors-lan.geekpie.org/anaconda/archive/Anaconda3-5.1.0-Linux-x86_64.sh


bash Anaconda3-5.1.0-Linux-x86_64.sh

echo "set PATH $HOME/anaconda3/bin $PATH" >> ~/.config/fish/config.fish

wget https://dl.google.com/go/go1.10.linux-amd64.tar.gz -O go_latest.tar.xz
tar xvf go_latest.tar.xz
set GOROOT $HOME/app/go
echo "set GOROOT $HOME/app/go"
mkdir -p ~/go
set GOPATH $HOME/go
echo "set GOPATH $HOME/go"

curl -L https://get.oh-my.fish | fish


echo "Okay!"