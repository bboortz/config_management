#!/bin/sh

clone_or_pull() {
	dir="$1"
	repo="$2"
	
	if [ -d "$dir" ]; then
		cd "$dir"
		git pull
		cd -
	else
		git clone "$repo" "$dir"
	fi
}

. ./repos.txt
ORIG_DIR="$PWD"
mkdir -p ./.tmp
cd ./.tmp


#clone_or_pull "dfm" "$dfm"
clone_or_pull "dotfiles" "$dotfiles"


cd "$ORIG_DIR"
