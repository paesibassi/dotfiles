#!/usr/bin/env bash
cat $1 | grep 'BR for Domino' | cut -d',' -f3,4,5 | sed -e 's/"//g' | sort | awk -F',' '{print $2" "$1"\t"$3}' | sed 's/^ //'

