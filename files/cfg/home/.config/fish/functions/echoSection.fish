function echoSection -d "Generic section header function used in scripts"
    echo
    echo
    set_color green
    echo -n ">>>  "
    set_color yellow
    echo -n $argv
    set_color normal
    echo
end