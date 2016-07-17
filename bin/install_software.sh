#!/bin/sh

install_from_tgz() {
	local url=$1
	local tgzfile=$2
	local copyfile=$3

	if [ -f $tgzfile ]; then
		return 0
	fi
	wget $url
	tar zxvf $tgzfile
	mv "$copyfile" ~/bin
}


. ./config/software.txt
ORIG_DIR="$PWD"
mkdir -p ./.tmp
cd ./.tmp

install_from_tgz $GOCRYPTFS_URL $GOCRYPTFS_TGZFILE $GOCRYPTFS_COPYFILE



cd "$ORIG_DIR"
