#!/bin/bash

  APULL=$(which ansible-pull)

  MYREPORMT="https://github.com/bashfulrobot/regolith-ansible.git"

  sudo $APULL --skip-tags "laptop" -U $MYREPORMT > /dev/null