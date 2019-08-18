#!/bin/bash
for j in {0..15}; do
    for i in {0..15}; do
        tput bold
        num=$((j * 16 + i))
        tput setaf $num
        printf "%3d " $num
        tput sgr0
    done;
    printf "\n";
done
