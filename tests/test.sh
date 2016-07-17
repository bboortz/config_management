#!/bin/bash

set -u
set -e


# test all make command seperatly
egrep "[0-9a-zA-Z\-]*:" Makefile | awk -F ":" '{ print $1 }' | while read f; do 
	echo -e "\n\n*** test: make $f ***"
	make $f
done


# test whole Makefile at once
echo -e "\n\n*** test: make ***"
make
