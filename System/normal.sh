#!/bin/sh

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
echo "Neovim ✅"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#read plugins.txt and clone git repositories
while read line
do
  if [ "$(echo $line | cut -d ' ' -f 1)" = "plugin" ]; then
    git clone --depth=1 $(echo $line | cut -d ' ' -f 3) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/"$(echo $line | cut -d ' ' -f 2)
  else
    git clone --depth=1 $(echo $line | cut -d ' ' -f 3) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/"$(echo $line | cut -d ' ' -f 2)
  fi
done < plugins.txt
echo "Oh my Zsh ✅"

source /usr/share/nvm/init-nvm.sh

nvm install --lts
echo "Node LTS ✅"
