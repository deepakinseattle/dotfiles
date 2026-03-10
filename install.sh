#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR

for file in aliases bash_profile bashrc exports path Brewfile gemrc; do
  if ln -s $SCRIPT_DIR/$file ~/.$file; then
    echo "Linked $SCRIPT_DIR/$file to ~/.$file"
  else
    echo "Unable to link $SCRIPT_DIR/$file to ~/.$file"
  fi
done;
unset $file;
