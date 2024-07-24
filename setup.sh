#!/bin/bash

echo "Beginning setting up Dotfiles..."
# Update package list and install zsh and neovim
sudo apt update && sudo apt install -y zsh nodejs npm


# Symlink various dotfiles to home directory
export DOTFILES=/workspaces/.codespaces/.persistedshare/dotfiles
ln -sf $DOTFILES/.zshrc $HOME/.zshrc
ln -sf $DOTFILES/.bashrc $HOME/.bashrc

# Set up global ignore file
mkdir -p $HOME/.config/git
git config --global core.excludesfile ~/.config/git/ignore
ln -sf $DOTFILES/ignore $HOME/.config/git/ignore

# Set zsh as the default shell
sudo chsh "$(id -un)" --shell "/usr/bin/zsh"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cat .zshrc > $HOME/.zshrc

echo "Dotfile setup complete."
