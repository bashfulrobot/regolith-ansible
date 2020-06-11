#!/usr/bin/env bash

v4l2-ctl --set-ctrl brightness=128
v4l2-ctl --set-ctrl contrast=128
v4l2-ctl --set-ctrl saturation=128
v4l2-ctl --set-ctrl white_balance_temperature_auto=1
v4l2-ctl --set-ctrl gain=0
v4l2-ctl --set-ctrl power_line_frequency=2
# v4l2-ctl --set-ctrl white_balance_temperature=4000
v4l2-ctl --set-ctrl sharpness=128
v4l2-ctl --set-ctrl backlight_compensation=0
v4l2-ctl --set-ctrl exposure_auto=3
# v4l2-ctl --set-ctrl exposure_absolute=250
v4l2-ctl --set-ctrl exposure_auto_priority=0
v4l2-ctl --set-ctrl pan_absolute=0
v4l2-ctl --set-ctrl tilt_absolute=0
# v4l2-ctl --set-ctrl focus_absolute=0
v4l2-ctl --set-ctrl focus_auto=1
v4l2-ctl --set-ctrl zoom_absolute=100

exit 0
