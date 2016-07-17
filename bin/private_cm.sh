#!/bin/sh

ORIG_DIR="$PWD"

cd ~/encrypted/config_management.plain
make

cd "$ORIG_DIR"
