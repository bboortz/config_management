#!/bin/sh


host -a ntp1.ptb.de > /dev/null && sudo ntpdate -uv ntp1.ptb.de
