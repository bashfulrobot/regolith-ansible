function espanso-list -d "List the current espanso triggers."
    cat $HOME/.config/espanso/default.yml | grep trigger | cut -d ' ' -f5 | less
end