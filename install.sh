#!/bin/sh

# find -mindepth 1 -maxdepth 1 | sed 's%./\([^/]\+\)%\1%' | xargs -n1 -I% sh -c "if [ '%' != '.git' ] && [ '%' != 'install.sh' ]; then echo Linking '%'; echo ln -sf $PWD/% ~/%; fi"

find -type f | sed 's%\(.*\)/\([^/]*\)%echo Linking \2; echo mkdir -p \1 && echo ln -s \0 ~/\0%' | tr '\n' '\0' | xargs -0 -n1 sh -c
