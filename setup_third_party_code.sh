#!/bin/bash

# installs useful programs on system
# assumes you are using Linux Mint
# RECOMMENDATION:
#   read document and type these commands yourself
#   especially if you are using one of the latest Linux distributions.
#   Things may have changed on the internet between now and your runtime.

set -e

#######################################################################
# Man pages for Linux Systems Programming
#######################################################################
apt install manpages-dev manpages-posix-dev

#######################################################################
# keepass
#######################################################################
apt install keepass2
add-apt-repository ppa:dlech/keepass2-plugins
apt update
apt install keepass2-plugin-application-indicator

#######################################################################
# Build, version control, and getting code for elsewhere
#######################################################################
sudo add-apt-repository ppa:git-core/ppa
sudo apt update
apt install git
apt install build-essential
apt install curl

#######################################################################
# Copy functionality
#######################################################################
apt install xsel xclip

#######################################################################
# Fun stuff
#######################################################################
apt install fortune cowsay bsdgames bsdgames-nonfree

#######################################################################
# Install more C Stuff
#######################################################################
apt install cmake llvm-6.0 llvm-6.0-dev libclang-6.0-dev

#######################################################################
# NeoVim
#######################################################################
add-apt-repository ppa:neovim-ppa/stable
apt update
apt install neovim
apt install python-dev python-pip python3-dev python3-pip

# when creating a virtual environment, run the following to get autocompletion:
pip install neovim
gem install neovim

# for ctags
npm install -g jsctags
apt install -y php

#######################################################################
# Vim dependencies
#######################################################################
apt install exuberant-ctags

#######################################################################
# Fonts
#######################################################################

# Installs the "Hack" font
apt install fonts-hack-ttf

#######################################################################
# Tmux
#######################################################################
apt install tmux

#######################################################################
# System monitoring
#######################################################################
apt install htop tree

#######################################################################
# Python 3
#######################################################################
apt install python3-dev
apt install python3-virtualenv

# enables pyenv to build with tkinter support
apt install tk-dev

#######################################################################
# MySQL
#######################################################################
apt install libmysqlclient-dev

#######################################################################
# Latex
#######################################################################
apt install texlive-full

#######################################################################
# Diagramming
#######################################################################
apt install graphviz
apt install gthumb

# plantuml
if [ ! -d ~/java ]; then
  mkdir ~/java
fi
wget -O ~/java/plantuml.jar \
  http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
cd ~/bin
# Add the following line to an executable file in ~/bin called "plantuml"
# #!/bin/bash
# java -jar ~/java/plantuml.jar ${@}

#######################################################################
# PDF Viewer with vi bindings
#######################################################################
apt install zathura

#######################################################################
# Colorize cats output
#######################################################################
apt install python-pygments

#######################################################################
# PyEnv
#######################################################################

# dependencies for curses
apt install libncurses5 libncurses5-dev libncursesw5

#######################################################################
# Pandoc
#######################################################################
# the available version in software repository is not latest
# build using the provided debian package under pandoc releases
# https://github.com/jgm/pandoc/releases

#######################################################################
# Rust packages
#######################################################################
cargo install ripgrep
cargo install fd-find
cargo install racer
rustup component add rustfmt-preview
rustup component add rust-src

#######################################################################
# kdenlive (along with necessary plugins)
#######################################################################
add-apt-repository ppa:kdenlive/kdenlive-stable
apt update
apt install kdenlive
apt install frei0r-plugins frei0r-plugins-dev frei0r-plugins-doc
apt install dvdauthor

#######################################################################
# ffmpeg2 (ubunu 16.04-specific workaround for video stabilization)
#######################################################################
add-apt-repository ppa:mc3man/ffmpeg-test
apt update
apt install ffmpeg-static
hash -r

#######################################################################
# peek: the gif-creation program
#######################################################################
add-apt-repository ppa:peek-developers/stable
apt update
apt install peek

#######################################################################
# zplug
#######################################################################
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

#######################################################################
# Vim tagbar
#######################################################################
cd ~/src/lib
git clone https://github.com/jszakmeister/rst2ctags

#######################################################################
# previewing RST files
# don't recommend using sudo with this one
#######################################################################
pip install restview

#######################################################################
# gotop: the nice process viewer, simpler alternative to htop
#######################################################################
go get github.com/cjbassi/gotop

#######################################################################
# pdfpc
#######################################################################
apt install pdf-presenter-console

#######################################################################
# Signal
#######################################################################
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

#######################################################################
# zshell
#######################################################################
sudo apt install zsh
# without sudo (makes zsh default shell):
chsh -s $(which zsh)
