#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p ~/Downloads/$2

rosbag record -O ~/Downloads/$2/$3 \
  /tf_static \
  /$1/rgb/camera_info \
  /$1/depth/camera_info \
  /$1/rgb/image_rect_color/compressed \
  /$1/depth/depth_registered/compressedDepth \
  /$1/imu/data \
  /$1/imu/data_raw \
  /$1/imu/mag