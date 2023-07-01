#!/bin/bash
ros2 launch ldlidar ldlidar.launch.py &
rviz2 -d src/ldlidar/rviz/ldlidar.rviz &

ros2 run littleslam_ros2 littleslam_ros2 &
ros2 bag play -s rosbag_v2 Mapping1.bag &
rviz2 -d src//littleslam_ros2/config/demo.rviz &

sleep infinity
