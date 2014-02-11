#!/usr/bin/env bash

# Based on bootstrap.sh by Mathias Bynens, retrieved 04/28/2013:
# https://github.com/mathiasbynens/dotfiles/blob/5d1850e041f955c48f5a2241faabddd7af895b58/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

function clean() {
        git clean -nx
	read -p "Clean the above files? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		git clean -fx
	fi
}

function doIt() {
    for i in $(ls -a); do 
	if [ $i != '.' -a $i != '..' -a $i != '.git' -a $i != '.DS_Store' -a $i != 'bootstrap.sh' -a $i != 'README.md' -a $i != '.gitignore' -a $i != '.gitmodules' ]; then 
            if [ $(uname) == "Darwin" ]; then
	        echo "$i"
	        gcp -alrf "$i" "$HOME/"
            else
                echo "$i"
                cp -alrf "$i" "$HOME/"
            fi
	fi
    done
}

clean
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset clean
unset doIt
