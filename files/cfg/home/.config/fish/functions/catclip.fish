function catclip -d "Cats a file and puts the results on the clipboard."
    /usr/bin/cat $argv | xclip -i -selection clipboard
end