#!/bin/bash
sleep 3
tmux send-keys -t 2 "cd /DroneLab/demos/px4_gazebo && roslaunch ./image_view.launch" ENTER
sleep 1
xdotool windowactivate --sync `xdotool search --name ".*rgb_camera.*" | tail -n 1`
xdotool windowactivate --sync `xdotool search --name "Unreal.*" | head -n 1` key --delay 1000 alt+p
rosrun control_test offb2.py
xdotool windowactivate --sync `xdotool search --name "Unreal.*" | head -n 1` key --delay 1000 Escape
