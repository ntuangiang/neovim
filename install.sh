#!/bin/bash -ex

cd ~

CWD=~/.nvim-install

git clone https://github.com/ntuangiang/neovim $CWD/config
cd $CWD/config

if [[ "$OSTYPE" =~ ^darwin ]]; then
    brew install git neovim
    git checkout os/macos
fi

if [[ "$OSTYPE" =~ ^linux ]]; then
    sudo apt-get install git neovim -y
    git checkout os/linux
fi

if [[ "$OSTYPE" =~ ^linux ]] | [[ "$OSTYPE" =~ ^darwin ]]; then
    cp $CWD/config/init.vim ~/.config/nvim/init.vim
    cp $CWD/config/local_init.vim ~/.config/nvim/local_init.vim
    cp $CWD/config/local_bundles.vim ~/.config/nvim/local_bundles.vim
fi

rm -rf $CWD


