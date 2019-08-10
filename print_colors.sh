#!/bin/bash

# license: 
#  - do whatever you want
#  - as is, anything that happens as a result of your use is not my fault
#  - make whatever changes, just don't push them upstream 
#    because I don't want to pull that sh##

# this works on my machine
# if it doesn't on yours,
# modify the script
A="\\\\033[0;45m  \\\\033[0m"
B="\\\\033[0;44m  \\\\033[0m"
C="\\\\033[0;42m  \\\\033[0m"
D="\\\\033[0;47m  \\\\033[0m"
E="\\\\033[0;43m  \\\\033[0m"
F="\\\\033[0;41m  \\\\033[0m"
# .grid.swp
FILE=$1


while read line ; do
  SUB="$(echo "$line" | sed "s/a/$A/g" |\
    sed -e "s/e/$E/g" |\
    sed -e "s/b/$B/g" |\
    sed -e "s/c/$C/g" |\
    sed -e "s/d/$D/g" |\
    sed -e "s/f/$F/g" )"
  
  echo -e "$SUB"
done <$FILE

