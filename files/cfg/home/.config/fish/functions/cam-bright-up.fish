function cam-bright-up -d "Increase Camera Brightness"

    source $HOME/.config/fish/functions/cam-src

    set CURRENT_VAL (v4l2-ctl -d $CAMERA -l | rg brightness | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL+5")
    v4l2-ctl -d $CAMERA --set-ctrl brightness=$NEW_VAL
end