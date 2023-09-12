#!/bin/bash

echo "Welcome, Devin!"

if [ -d "/home/devin/bible" ]; then
  cd bible
  ls
else
  mkdir "bible"
  cd bible
  ls
fi

echo "Entry? (y/n)"
read entry

if [ "$entry" = "y" ] || [ "$entry" = "yes" ]; then
  echo "which verse?"
  read verse
  touch "$verse"
  echo "your thoughts?"
  read journal
  echo "$journal"  > "$verse"

else
  echo "Inquiry? (y/n)"
  read inquiry

  if [ "$inquiry" = "y" ] || [ "$inquiry" = "yes" ]; then
    read key
    grep -r "$key" /home/devin/bible  
  else
    exit
  fi
fi

