function cam-reset -d "Reset Camera"
    v4l2-ctl -d /dev/video0 --set-ctrl brightness=128
    v4l2-ctl -d /dev/video0 --set-ctrl contrast=128
    v4l2-ctl -d /dev/video0 --set-ctrl saturation=128
    v4l2-ctl -d /dev/video0 --set-ctrl white_balance_temperature_auto=1
    v4l2-ctl -d /dev/video0 --set-ctrl gain=0
    v4l2-ctl -d /dev/video0 --set-ctrl power_line_frequency=2
    # v4l2-ctl -d /dev/video0 --set-ctrl white_balance_temperature=4000
    v4l2-ctl -d /dev/video0 --set-ctrl sharpness=128
    v4l2-ctl -d /dev/video0 --set-ctrl backlight_compensation=0
    v4l2-ctl -d /dev/video0 --set-ctrl exposure_auto=3
    # v4l2-ctl -d /dev/video0 --set-ctrl exposure_absolute=250
    v4l2-ctl -d /dev/video0 --set-ctrl exposure_auto_priority=0
    v4l2-ctl -d /dev/video0 --set-ctrl pan_absolute=0
    v4l2-ctl -d /dev/video0 --set-ctrl tilt_absolute=0
    v4l2-ctl -d /dev/video0 --set-ctrl focus_absolute=0
    v4l2-ctl -d /dev/video0 --set-ctrl focus_auto=0
    v4l2-ctl -d /dev/video0 --set-ctrl zoom_absolute=100
    v4l2-ctl -d /dev/video0 --set-ctrl led1_mode=0
    v4l2-ctl -d /dev/video0 --set-ctrl led1_frequency=0
end