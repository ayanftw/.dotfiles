#!/data/data/com.termux/files/usr/bin/env bash

if [[ "$OSTYPE" != *"android" ]]; then
    echo "not running android"
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install some packages
apt update
apt upgrade
apt install -f $(cat $DIR/../termux/pkg.list)
