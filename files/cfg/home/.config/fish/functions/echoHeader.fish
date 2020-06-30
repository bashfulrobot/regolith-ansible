function echoHeader -d "Generic header function used in scripts"
    echo
    echo
    # printf "%40s \n" "[set_color red; $argv set_color normal;]"
    echo -n "     ["
    set_color red
    echo -n $argv
    set_color normal
    echo -n "]"
    echo
end