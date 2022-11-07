# MOTION-STELLA-VSLAM

## Repository Setup
Run ```./setup.sh```

## Running SLAM with Realsense
Run ```source MOTION-STELLA-VSLAM/install/setup.bash```

## Open up 3 terminals
- Terminal 1: ```ros2 launch realsense2_camera rs_launch.py```
- Terminal 2: ```ros2 run image_transport republish raw in:=camera/color/image_raw out:=/camera/image_raw```
- Terminal 2 (depth realsense): ```ros2 run image_transport republish raw in:=camera/depth/image_rect_raw out:=/camera/depth/image_raw```


Mapping:
- Terminal 3: ```ros2 run stella_vslam_ros run_slam -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-out map.msg```
- Terminal 3 (realsense): ```ros2 run stella_vslam_ros run_slam -v orb_vocab.fbow -c camera_config/realsense_rgbd.yaml --map-db-out map.msg```

Localization: 
- Terminal 3: ```ros2 run stella_vslam_ros run_slam --disable-mapping -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-in map.msg```
- Terminal 3 (realsense): ```ros2 run stella_vslam_ros run_slam --disable-mapping -v orb_vocab.fbow -c camera_config/realsense_rgbd.yaml --map-db-in map.msg```

