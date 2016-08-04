#!/bin/sh

./bin/check_root.sh || exit 0

host -a ntp1.ptb.de > /dev/null && sudo ntpdate -uv ntp1.ptb.de
