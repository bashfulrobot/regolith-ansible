function cam-reset -d "Reset Camera"

    source $HOME/.config/fish/functions/cam-src

    v4l2-ctl -d $CAMERA --set-ctrl brightness=128
    v4l2-ctl -d $CAMERA --set-ctrl contrast=128
    v4l2-ctl -d $CAMERA --set-ctrl saturation=128
    v4l2-ctl -d $CAMERA --set-ctrl white_balance_temperature_auto=1
    v4l2-ctl -d $CAMERA --set-ctrl gain=0
    v4l2-ctl -d $CAMERA --set-ctrl power_line_frequency=2
    # v4l2-ctl -d $CAMERA --set-ctrl white_balance_temperature=4000
    v4l2-ctl -d $CAMERA --set-ctrl sharpness=128
    v4l2-ctl -d $CAMERA --set-ctrl backlight_compensation=0
    v4l2-ctl -d $CAMERA --set-ctrl exposure_auto=3
    # v4l2-ctl -d $CAMERA --set-ctrl exposure_absolute=250
    v4l2-ctl -d $CAMERA --set-ctrl exposure_auto_priority=0
    v4l2-ctl -d $CAMERA --set-ctrl pan_absolute=0
    v4l2-ctl -d $CAMERA --set-ctrl tilt_absolute=0
    v4l2-ctl -d $CAMERA --set-ctrl focus_absolute=0
    v4l2-ctl -d $CAMERA --set-ctrl focus_auto=0
    v4l2-ctl -d $CAMERA --set-ctrl zoom_absolute=100
    v4l2-ctl -d $CAMERA --set-ctrl led1_mode=0
    v4l2-ctl -d $CAMERA --set-ctrl led1_frequency=0
end