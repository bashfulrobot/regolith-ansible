#!/usr/bin/env bash

cd ~/tmp
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd ~/tmp/nord-gnome-terminal/src
chmod +x ~/tmp/nord-gnome-terminal/src/nord.sh
~/tmp/nord-gnome-terminal/src/nord.sh --profile=Regolith

exit 0