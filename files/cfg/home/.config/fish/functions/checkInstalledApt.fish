function checkInstalledApt -d "Checks in an application is installed and installs if it is not."
    dpkg -s $argv 2>/dev/null >/dev/null || sudo aptitude install -y $argv
end