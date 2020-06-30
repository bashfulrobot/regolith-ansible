#!/usr/bin/env bash

### Decription
# This script simply creates a new GitHub repository from the cli that defaults to using a branch called "main" (vs "master"). Also will set the repo to use SSH.

### Dependencies
# This script makes use of:
# - git
# - gh (https://github.com/cli/cli)

### Usage
# script '[REPO NAME]' '[REPO DESCRIPTION]'
# Note - you will want to quote your description, etc.

####### Configure <====
GITHUB_USERNAME="SETME"
# Where your repo will be created
WORKING_DIR="${HOME}/SETME"

### Main
ME=$(basename "$0")

# Resusable usage message
show-usage() {
    echo "USAGE: $ME '[REPO NAME]' '[REPO DESCRIPTION]'"
    echo "exiting..."
    exit 1
}

# Check for default GitHub user values and notify the user to setup.
if [ "$GITHUB_USERNAME" == "SETME" ]; then
    echo "It looks like you have not configured your GitHub user yet."
    exit 1
fi
# Check for default working directory values and notify the user to setup.
if [ "$WORKING_DIR" == "${HOME}/SETME" ]; then
    echo "It looks like you have not configured the working directory yet."
    exit 1
fi

# Exit the script if no parameters added
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    show-usage
fi

# Exit the script if no repo is provided
if [ -z "$1" ]
  then
    echo "No repo name provided"
    show-usage
fi

# Exit the script if no repo desction is provided
if [ -z "$2" ]
  then
    echo "No repo description provided"
    show-usage
fi

# Create the working dir and go there
mkdir -p ${WORKING_DIR}/$1 && cd ${WORKING_DIR}/$1
# Local git init
git init
# Create a public repo on GitHub w/ a description
gh repo create -d "$2" --public
# Change the remote to SSH (My prefernece)
git remote set-url origin git@github.com:${GITHUB_USERNAME}/$1.git
# Create main branch
git checkout -b main
# Create a default README
echo "$2" >> README.md
# Check in the README
git add README.md
git commit -a -m "🎉 Initial Commit"
# Set upstream origin
git push --set-upstream origin main
# Delete the orginal master branch
git branch -D master
# Prune the deleted branches
git fetch --prune

# Exit clean
exit 0