#!/usr/bin/env bash

sudo apt-get install v4l2loopback-dkms -y
echo options v4l2loopback devices=1 video_nr=20 card_label="fakecam" exclusive_caps=1 | sudo tee -a /etc/modprobe.d/fakecam.conf
echo v4l2loopback | sudo tee -a /etc/modules-load.d/fakecam.conf
sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback

sudo snap install fakecam
sudo snap connect fakecam:camera
 exit 0