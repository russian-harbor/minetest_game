#!/usr/bin/env bash

REFHEAD="ref: refs/heads/develop"

if [[ ! -f .git/HEAD ]]; then
    echo "error: you should be in the root directory of russian-harbor-game"
    exit 1
fi

if [[ ! -f .git/HEAD ]] || [[ "$(< .git/HEAD)" != "$REFHEAD" ]]; then
    echo "error: you have to be on 'develop' branch to run this install script"
    exit 2
fi

if [ ! -d "./mods/smartfs" ]; then
    echo "install smartfs mod ..."
    git clone https://github.com/minetest-mods/smartfs mods/smartfs
else
    echo "skipping smartfs mod installation (directory already exists)"
fi

if [ ! -d "./mods/qa_block" ]; then
    echo "install qa_block mod ..."
    git clone https://github.com/minetest-mods/qa_block mods/qa_block
else
    echo "skipping qa_block mod installation (directory already exists)"
fi
