#!/bin/sh

sudo apt-get update --yes
sudo apt-get upgrade --yes
sudo unattended-upgrades -d
