function myint
    ip -4 a | grep -v valid_lft | awk '{print $2}'
end

function catclip
    /usr/bin/cat $1 | xclip -i -selection clipboard
end