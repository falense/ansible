#!/bin/bash
comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz 2> /dev/null| sed -n 's/^Package: //p' | sort -u | awk '!/gzip/') 