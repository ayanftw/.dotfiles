#!/data/data/com.termux/files/usr/bin/env bash

if [[ "$OSTYPE" != *"android" ]]; then
    echo "not running android"
    exit 1
fi

# install some packages
apt install -f $(cat ../termux/pkg.list)
