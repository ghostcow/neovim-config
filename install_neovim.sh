#!/bin/bash

sudo apt-get install -y python-dev python3-dev python-pip python3-pip
sudo apt-get install -y pkg-config
sudo apt-get install -y xsel
sudo apt-get install -y git
sudo apt-get install -y cmake
sudo apt-get install -y build-essential
sudo apt-get install -y gcc-multilib
sudo apt-get install -y automake
sudo apt-get install -y libtool
sudo apt-get install -y libtool-bin
sudo pip install --upgrade neovim
sudo pip3 install --upgrade neovim

rm -rf ~/neovim-install
git clone https://github.com/neovim/neovim.git ~/neovim-install
pushd ~/neovim-install

unset LUA_PATH
unset LUA_CPATH
make clean
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=$HOME/neovim" CMAKE_BUILD_TYPE=Release || exit 1
make install
echo -e '# nvim\nexport PATH="$HOME/neovim/bin:$PATH"\nalias nvim="TERM=xterm-256colors nvim"\n' >> ~/.bashrc

mkdir -p ~/.config/nvim/
popd
cp init.vim local.vim local.bundles.vim ~/.config/nvim

ln -s ~/.config/nvim/local.bundles.vim ~/.nvimrc.local.bundles
ln -s ~/.config/nvim/local.vim ~/.nvimrc.local

~/neovim/bin/nvim +NeoBundleInstall +qall
echo 'Restart bash to run nvim'
