from launch import LaunchDescription
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory

def generate_launch_description():
    pkg_path = get_package_share_directory('cracked_stella')

    return LaunchDescription([
        Node(
            package='stella_vslam_ros',
            executable='run_slam',
            name='stella_slam',
            arguments=['--config', f'{pkg_path}/camera_config/fancy_realsense_stereo.yaml', 
                      '--map-db-out', f'/tmp/stella_map.msg',
                      '--vocab', f'{pkg_path}/orb_vocab.fbow'],
            remappings=[
                ('/camera/left/image_raw', '/camera/fisheye1/image_raw'),
                ('/camera/right/image_raw', '/camera/fisheye2/image_raw'),
            ]
        ),
        # Launch realsense T265 node
        Node(
            package="realsense2_camera",
            executable="realsense2_camera_node",
            output="screen",
            namespace="camera",
            parameters=["device_type:=t265"],
        ),

    ])
 