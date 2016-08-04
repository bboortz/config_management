#!/bin/sh

ID=$( id -u )
if [ "$ID" -eq 0 ]; then
	exit 0
fi

groups $USER | grep '\bsudo\b' >/dev/null 2>&1 && exit 0


echo "not root... skipping."
exit 1
