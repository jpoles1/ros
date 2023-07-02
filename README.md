#  ROS2 LD06 LIDAR Docker-Compose Quickstart:

Tested only on Linux Mint. 

This repo contains a docker-compose setup which runs a basic 2D Lidar and 2D SLAM with the LD06 LIDAR in ROS2. The setup runs out of a docker-compose container.

At the time of writing, USB passthrough is not working well on WSL, thus I was unable to get it working but your mileage may vary. You might be able to get it working with: https://github.com/dorssel/usbipd-win.

### 1) Plug in the LD06 into your USB
- You may need to change around the USB mapping in docker-compose.yml.
At this moment, my USB is set to ttyUSB0, but yours may show up under a different designation (ttyUSB2 for example). In this case you must change:
`/dev/ttyUSB0:/dev/ttyUSB0` to `/dev/ttyUSB2:/dev/ttyUSB0`

### 2) Run the container!

```
docker-compose up
```

### 3) Enjoy the show! 

#### Live view from the LIDAR:

![live_view](https://github.com/jpoles1/ros2_lidar/assets/366282/042db94c-2e32-46ed-b22a-9eea894b6d24)

#### 2D SLAM Mapping:
![map](https://github.com/jpoles1/ros2_lidar/assets/366282/d28e7061-f15e-46af-b8c1-56c297d2a8d2)

### 4) Troubleshooting
You can modify the commands run at startup dynamically by simply editing ./workspace/entrypoint.sh

