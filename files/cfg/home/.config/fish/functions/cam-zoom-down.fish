function cam-zoom-down -d "Decrease Camera Zoom"

    source $HOME/.config/fish/functions/cam-src

    set CURRENT_VAL (v4l2-ctl -d $CAMERA -l | rg zoom_absolute | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL-5")
    v4l2-ctl -d $CAMERA --set-ctrl zoom_absolute=$NEW_VAL
end