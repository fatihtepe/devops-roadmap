#!/bin/bash
# Check git
if ! [ -x "$(command -v git)" ]; then
  echo "[-] git not installed, First thing first install git." 1>&2
  exit -1
fi
# Check zsh
if [ -x "$(command -v zsh) > /dev/null" ]; then
  echo "[-] zsh not found, Please install zsh first" 1>&2
  exit -2
else
  echo "[+] ZSH already installed, skipping"
fi
# Check oh-my-zsh
if ! [[ -d "$ZSH" ]]; then
  echo "[-] oh-my-zsh not found, installing"
  # Check curl
  if [ -x "$(command -v curl)" ]; then
    echo "[+] curl already installed, install on curl"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  elif [ -x "$(command -v wget)" ]; then
    echo "[+] wget already installed, install on wget"
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  elif [ -x "$(command -v fetch)" ]; then
    echo "[+] fetch already installed, install on fetch"
    sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  else
    echo "[-] Non of them above not installed" 1>&2
    echo "
    - curl
    - wget
    - fetch
    " 1>&2
    exit -3
  fi
else
  echo "[+] oh-my-zsh found, skipping."
fi
# Check powerlevel10k
if ! [[ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]]; then
  echo "[-] powerlevel10k not installed, installing"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  # TODO: 
  echo "[WIP]: Rename ZSH_THEME manually into $HOME/.zshrc file"
  # echo "[+] \$ZSH_THEME changed to powerlevel10k as global"
  # sed -i 's/.*ZSH_THEME=\"/ZSH_THEME=\"powerlevel10k/powerlevel10k\"/' $HOME/.zshrc
else
  echo "[+] powerlevel10k already installed"
fi