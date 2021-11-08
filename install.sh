#!/bin/bash

cd ~
CWD=$(pwd)/neovim-install

main() {
   validateInput 
   install
}

install() {
    if [[ "$OSTYPE" =~ ^darwin ]]; then
        brew install git neovim exuberant-ctags
    fi

    if [[ "$OSTYPE" =~ ^linux ]]; then
        sudo apt-get install git neovim exuberant-ctags -y
    fi

    if [ -d "$CWD" ]; then
        rm -rf $CWD
    fi

    git clone https://github.com/ntuangiang/neovim $CWD
    cp $CWD/init.vim ~/.config/nvim/init.vim
    cp $CWD/local_init.vim ~/.config/nvim/local_init.vim
    cp $CWD/local_bundles.vim ~/.config/nvim/local_bundles.vim

    rm -rf $CWD
}

validateInput() {
    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -h|--help) usage;;
            *) echo "Unknown parameter passed: $1"; exit 1 ;;
        esac
        shift
    done

}

usage() {
    echo "
NAME:
    ./install.sh - This is install tool description displayed on help message

USAGE:
    [options and commands] [-- [extra args]]

OPTIONS:
    -h,--help                          Display this help
    "
}

