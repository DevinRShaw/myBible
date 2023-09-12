#!/bin/bash

echo "welcome"

if [ -d "/home/devin/bible" ]; then
  cd bible
  ls
else
  mkdir "bible"
  cd bible
fi

echo "entry or other (e/o)"
read entry

if [ "$entry" = "e" ]; then
  echo "which verse?"
  read verse
  touch "$verse"
  echo "your thoughts?"
  read journal
  echo "$journal"  > "$verse"

else
  echo "inquiry - i"
  read response

  if [ "$response" = "i" ]; then
    read key
    grep -r "$key" /home/devin/bible  
  else
    exit
  fi
fi
