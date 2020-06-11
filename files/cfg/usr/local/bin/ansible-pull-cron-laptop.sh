#!/bin/bash

  APULL=$(which ansible-pull)

  MYREPORMT="https://github.com/bashfulrobot/regolith-ansible.git"

  sudo $APULL --skip-tags "desktop" -U $MYREPORMT > /dev/null