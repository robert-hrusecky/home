#!/bin/sh

find -mindepth 1 -maxdepth 1 | xargs -n1 -I% echo ln -s % ~/%
