#!/bin/sh

./bin/check_root.sh || exit 0

sudo apt-get install --yes $( cat ./config/base_packages.txt )
