function cam-sat-down -d "Decrease Camera Saturation"

    source $HOME/.config/fish/functions/cam-src

    set CURRENT_VAL (v4l2-ctl -d $CAMERA -l | rg saturation | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL-5")
    v4l2-ctl -d $CAMERA --set-ctrl saturation=$NEW_VAL
end