# MOTION-STELLA-VSLAM

## Repository Setup
Run ```sudo setup.sh``` FROM THE SCRIPTS FOLDER (otherwise it will probably break your machine in ways unimaginable :( I wouldnt risk it)

## Running SLAM with Realsense
Run ```source ${PWD}/MOTION-STELLA-VSLAM/install/setup.bash```

## Open up 3 terminals
- Terminal 1: ```ros2 launch realsense2_camera rs_launch.py```
- Terminal 2: ```ros2 run image_transport republish raw in:=camera/color/image_raw out:=/camera/image_raw```

Mapping:
- Terminal 3: ```ros2 run stella_vslam_ros run_slam -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-out map.msg```

Localization: 
- Terminal 3: ```ros2 run stella_vslam_ros run_slam --disable-mapping -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-in map.msg```
