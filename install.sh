#!/bin/bash

echo "Beginning setting up Dotfiles..."

# Symlink various dotfiles to home directory
create_symlinks() {
    # Get the directory in which this script lives.
    script_dir=$(dirname "$(readlink -f "$0")")

    # Get a list of all files in this directory that start with a dot.
    files=$(find -maxdepth 1 -type f -name ".*")

    # Create a symbolic link to each file in the home directory.
    for file in $files; do
        name=$(basename $file)
        echo "Creating symlink to $name in home directory."
        rm -rf ~/$name
        ln -s $script_dir/$name ~/$name
    done
}

create_symlinks

# Set up global ignore file
mkdir -p $HOME/.config/git
git config --global core.excludesfile ~/.config/git/ignore
ln -sf $DOTFILES/ignore $HOME/.config/git/ignore

# Set zsh as the default shell
sudo chsh "$(id -un)" --shell "/usr/bin/zsh"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

export ZSH="$HOME/.oh-my-zsh"

echo "Dotfile setup complete."
