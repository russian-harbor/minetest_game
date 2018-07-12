#!/usr/bin/env bash

REFHEAD="ref: refs/heads/develop"

if [[ ! -f .git/HEAD ]]; then
    echo "error: you should be in the root directory of russian-harbor-game"
    exit 1
fi

if [[ ! -f .git/HEAD ]] || [[ "$(< .git/HEAD)" != "$REFHEAD" ]]; then
    echo "WARNING: you are not in the 'develop' branch"
    read -p "Are you sure you want to install development mods? (Y/N)" -n 1 -r
    echo    # (optional) move to a new line
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 2
    fi
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
