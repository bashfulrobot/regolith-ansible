function cam-zoom-down -d "Decrease Camera Zoom"
    set CURRENT_VAL (v4l2-ctl -d /dev/video0 -l | rg zoom_absolute | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL-5")
    v4l2-ctl -d /dev/video0 --set-ctrl zoom_absolute=$NEW_VAL
end