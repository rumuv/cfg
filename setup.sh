#!/usr/bin/env sh

set -eux

default_shell=$(basename "$SHELL")

ln -sf $PWD/.vimrc $HOME/.vimrc
ln -sf $PWD/.tmux.conf $HOME/.tmux.conf

if [ "$default_shell" == "zsh" ]; then
  ln -sf $PWD/.zshrc $HOME/.zshrc
elif [ "$default_shell" == "bash" ]; then
  ln -sf $PWD/.bashrc $HOME/.bashrc
else
  echo "Cannot detect default user shell"
fi
