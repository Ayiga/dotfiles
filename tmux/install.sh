#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

mkdir -p ~/.config
ln -s "$SCRIPT_DIR" ~/.config/tmux
ln -s ~/.config/tmux/.tmux.conf ~/.tmux.conf

