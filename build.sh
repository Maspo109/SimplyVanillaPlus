#!/bin/sh
set -e

version=$(grep -e "^version" pack.toml | cut -f3 -d' ' | tr -d '"')
minecraft=$(grep -e "^minecraft" pack.toml | cut -f3 -d' ' | tr -d '"')

packwiz curseforge export -s server -o simply-vanilla-plus-mc${minecraft}-${version}-server.zip
packwiz curseforge export -s client -o simply-vanilla-plus-mc${minecraft}-${version}.zip
