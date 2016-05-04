#!/bin/bash

if [ -d "~/.config/nvim" ]; then
    mv ~/.config/nvim ~/.config/nvim.`date +%m%d-%H:%M`.bak
fi

curl -fsLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fsLo ~/.config/nvim/init.vim https://raw.githubusercontent.com/4679/nvim-config/master/init.vim

nvim +PlugInstall

sed -i '/colorscheme/s/^" //' ~/.config/nvim/init.vim
sed -i '/autocmd/s/^" //' ~/.config/nvim/init.vim

read -p "是否安装了Powerline字体?[y/n]:" is

if [ $is = "y" ]; then
    sed -i '/powerline/s/^" //' ~/.config/nvim/init.vim
fi
