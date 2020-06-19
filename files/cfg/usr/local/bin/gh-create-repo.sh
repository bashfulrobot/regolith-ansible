#!/usr/bin/env bash

ME=$(basename "$0")

function usage() {
    echo "USAGE: $ME [REPO NAME] [REPO DESCRIPTION]"
    echo "exiting..."
    exit 1
}
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    usage()
fi

if [ -z "$1" ]
  then
    echo "No repo name provided"
    usage()
fi
if [ -z "$2" ]
  then
    echo "No repo description provided"
    usage()
fi


mkdir -p $HOME/tmp/$1 && cd $HOME/tmp/$1
git init
gh repo create -d "$2" --public
git remote set-url origin git@github.com:bashfulrobot/$1.git
git checkout -b main
echo "$2" >> README
git add README
git commit -a -m "🎉 Initial Commit"
git push --set-upstream origin main
git branch -D master
git fetch --prune