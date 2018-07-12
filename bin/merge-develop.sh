#!/bin/bash

REFHEAD="ref: refs/heads/russian-harbor-game"

if [[ ! -f .git/HEAD ]]; then
    echo "error: you should be in the root directory of russian-harbor-game"
    exit 1
fi

if [[ ! -f .git/HEAD ]] || [[ "$(< .git/HEAD)" != "$REFHEAD" ]]; then
    echo "error: branch russian-harbor-game has to be cheched out"
    exit 1
fi

git merge --no-commit --no-ff origin/develop

# revert merge updates from develop
if [[ -f bin/install-dev-mods.sh ]]; then
    git reset -- bin/install-dev-mods.sh
    rm bin/install-dev-mods.sh
fi

./bin/submodules-git-to-http.py
git add .gitmodules

git commit -m "Merge branch 'develop' into russian-harbor-game"
