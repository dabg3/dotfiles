#!/bin/sh
# execute from .dotfiles root
rsync -r --prune-empty-dirs --exclude='scripts' $(pwd)/.mozilla ~/
