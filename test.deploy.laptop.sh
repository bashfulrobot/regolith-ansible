#!/usr/bin/env bash

~/.local/bin/ansible-lint -x 401 run.yml

# read -p "Run play? [Enter] for yes, [Ctrl+c] for no."

sudo ls >/dev/null
ansible-playbook --skip-tags "desktop" --connection=local run.yml

exit 0
