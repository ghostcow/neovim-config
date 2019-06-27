#!/bin/bash

wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/neovim/bin
mv nvim.appimage ~/neovim/bin/nvim

echo -e '\n# nvim\nexport PATH="$HOME/neovim/bin:$PATH"\n' >> ~/.bashrc

mkdir -p ~/.config/nvim/
cp init.vim local.vim local.bundles.vim ~/.config/nvim

ln -s ~/.config/nvim/local.bundles.vim ~/.nvimrc.local.bundles
ln -s ~/.config/nvim/local.vim ~/.nvimrc.local

~/neovim/bin/nvim +NeoBundleInstall +qall
echo 'Restart bash to run nvim'

cp ./.tmux.conf ~
