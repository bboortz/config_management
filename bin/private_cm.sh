#!/bin/sh

ORIG_DIR="$PWD"

cd ~/encrypted/config_management.plain || exit 0
make

cd "$ORIG_DIR"
