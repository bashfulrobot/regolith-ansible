function cam-bright-down -d "Decrease Camera Brightness"
    set CURRENT_VAL (v4l2-ctl -d /dev/video0 -l | rg brightness | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL-10")
    v4l2-ctl -d /dev/video0 --set-ctrl brightness=$NEW_VAL
end