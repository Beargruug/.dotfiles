#!/bin/bash

pushd ~/.dotfiles/.config/nvim
git add .
git commit -m 'automated commit'
git push
popd

pushd ~/.dotfiles/
git add .
git commit -m 'automated commit'
git push
popd
