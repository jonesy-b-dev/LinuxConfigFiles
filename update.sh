#!/bin/bash

mapfile -t configsLc < <(ls configs/.config)
mapfile -t configsEx < <(ls ~/.config)

echo "Local configs"
for conf in "${configsLc[@]}"; do
	cp -r ~/.config/$conf ~/temp
done
