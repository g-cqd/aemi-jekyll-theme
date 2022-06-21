#!/bin/bash

cd `pwd`;

for file in `cat ./fonts.txt`; do
    wget -c -P ./assets/font-files/ "$file";
done;
