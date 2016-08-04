#!/bin/sh

./bin/check_root.sh || exit 0¬

sudo apt-get update --yes
sudo apt-get upgrade --yes
sudo unattended-upgrades -d
