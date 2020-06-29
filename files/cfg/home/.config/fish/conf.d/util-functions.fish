set RED (tput setaf 1)
set GREEN (tput setaf 2)
set YELLOW (tput setaf 3)
set NC (tput sgr0)

function echoHeader
    echo
    echo
    printf "%40s \n" "[$RED $1 $NC]"
    # echo "> > >  $1 =========="
    echo
end

function echoSection
    echo
    echo
    printf "$GREEN > > > $NC %1s \n" "$YELLOW $1 $NC"
    # echo "> > >  $1 =========="
    echo
end

function checkInstalledApt
    dpkg -s "$1" 2>/dev/null >/dev/null || sudo aptitude install -y "$1"
end

function runAptUpdateIfNeeded
    # Update APT Repos of older than 12 hours
    if test -z "(find /var/cache/apt/pkgcache.bin -mmin -720)"
        sudo aptitude update
    end
end