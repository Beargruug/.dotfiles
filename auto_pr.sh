#!/bin/bash

pushd ~/.dotfiles/nvim/.config/nvim
git add .
git commit -m 'automated commit'
git push
popd

pushd ~/.dotfiles
git add .
git commit -m 'automated commit'
git push
popd
