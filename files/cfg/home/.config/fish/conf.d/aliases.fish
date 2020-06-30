function pcp
    rsync -aP $argv
end

function er
    code-insiders -r $argv
end

function e
    code-insiders $argv
end

function e-root
    code-insiders --user-data-dir=`~/.code-insiders/` $argv
end

function opermissions
    stat -c '%A %a %n' $argv
end

function octperm
    stat -c '%A %a %n'
end

function espanso-list
    cat $HOME/.config/espanso/default.yml | grep trigger | cut -d ' ' -f5 | less
end

function vpn-login
    /usr/bin/nordvpn login
end
function vpn-logout
    /usr/bin/nordvpn logout
end
function vpn-up
    /usr/bin/nordvpn connect
end
function vpn-down
    /usr/bin/nordvpn disconnect
end
function vpn-countries
    /usr/bin/nordvpn countries
end
function vpn-cities
    /usr/bin/nordvpn cities
end
function vpn-settings
    /usr/bin/nordvpn settings
end
function vpn-status
    /usr/bin/nordvpn status
end
function vpn-account
    /usr/bin/nordvpn account
end
function vpn-help
    /usr/bin/brave-browser-nightly https://support.nordvpn.com/Connectivity/Linux/1325531132/Installing-and-using-NordVPN-on-Debian-Ubuntu-and-Linux-Mint.htm
end

function cat
    batcat $argv
end

function editorconfig-init
    cp $HOME/.config/editorconfig/.editorconfig .
end
function uncrustify-init
    cp $HOME/.config/uncrustify/.uncrustify.cfg .
end

function oni2
    $HOME/Documents/bin/Onivim2-x86_64.AppImage
end

function gen-passwd
    $HOME/Documents/bin/generate-passwd.sh
end

function gh-init
    /usr/local/bin/github-init-main.sh
end