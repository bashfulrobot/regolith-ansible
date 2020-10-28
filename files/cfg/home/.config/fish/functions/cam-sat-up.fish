function cam-sat-up -d "Increase Camera Saturation"
    set CURRENT_VAL (v4l2-ctl -d /dev/video0 -l | rg saturation | cut -d '=' -f6)
    set NEW_VAL (math "$CURRENT_VAL+5")
    v4l2-ctl -d /dev/video0 --set-ctrl saturation=$NEW_VAL
end