function cam-bright-down -d "Decrease Camera Brightness"

    source $HOME/.config/fish/functions/cam-src

    set CURRENT_VAL (v4l2-ctl -d $CAMERA -l | rg brightness | cut -d '=' -f6)

    if test -d $argv
        set MULTIPLIER 1
    else
        set MULTIPLIER $argv
    end

    set OFFSET (math "$MULTIPLIER * 5")

    set NEW_VAL (math "$CURRENT_VAL-$OFFSET")

    v4l2-ctl -d $CAMERA --set-ctrl brightness=$NEW_VAL
end