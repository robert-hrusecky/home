#!/bin/sh

find -mindepth 1 -maxdepth 1 | sed 's%./\([^/]\+\)%\1%' | xargs -n1 -I% sh -c "if [ '%' != '.git' ] && [ '%' != 'install.sh' ]; then echo Linking '%'; ln -sf $PWD/% ~/%; fi"
