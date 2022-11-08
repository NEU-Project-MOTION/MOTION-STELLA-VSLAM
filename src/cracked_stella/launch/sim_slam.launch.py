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
            arguments=['--config', f'{pkg_path}/camera_config/sim_rgbd.yaml', 
                      '--map-db-out', f'/tmp/stella_map.msg',
                      '--vocab', f'{pkg_path}/orb_vocab.fbow'],
            parameters=[{'publish_tf': False}],
            remappings=[
                ('/camera/image_raw', '/drone/realsense/color/image_raw'),
            ]
        ),
    ])
 