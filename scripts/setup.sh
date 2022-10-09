
## Leave Repo
cd ../
mkdir stella_slam_installations

#VSLAM Install
git clone https://github.com/stella-cv/stella_vslam.git
cd stella_vslam
git submodule update -i --recursive

## Dependencies
apt update -y
apt upgrade -y --no-install-recommends
# basic dependencies
apt install -y build-essential pkg-config cmake git wget curl unzip
# g2o dependencies
apt install -y libatlas-base-dev libsuitesparse-dev
# OpenCV dependencies
apt install -y libgtk-3-dev
apt install -y ffmpeg
apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev
# eigen dependencies
apt install -y gfortran
# backward-cpp dependencies (optional)
apt install -y binutils-dev
# other dependencies
apt install -y libyaml-cpp-dev libgflags-dev sqlite3 libsqlite3-dev

# (if you plan on using PangolinViewer)
# Pangolin dependencies
apt install -y libglew-dev

# (if you plan on using SocketViewer)
# Protobuf dependencies
apt install -y autogen autoconf libtool
# Node.js
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y nodejs

#Eigen Install
cd ../stella_slam_installations
wget -q https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.bz2
tar xf eigen-3.3.7.tar.bz2
rm -rf eigen-3.3.7.tar.bz2
cd eigen-3.3.7
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j4
make install
cd ../../

# OpenCV Install
wget -q https://github.com/opencv/opencv/archive/3.4.0.zip
unzip -q 3.4.0.zip
rm -rf 3.4.0.zip
cd opencv-3.4.0
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DENABLE_CXX11=ON \
    -DBUILD_DOCS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_JASPER=OFF \
    -DBUILD_OPENEXR=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_TESTS=OFF \
    -DWITH_EIGEN=ON \
    -DWITH_FFMPEG=ON \
    -DWITH_OPENMP=ON \
    ..
make -j4
make install
cd ../../

# FBoW
git clone https://github.com/stella-cv/FBoW.git
cd FBoW
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j4
make install
cd ../../

# G2O
git clone https://github.com/RainerKuemmerle/g2o.git
cd g2o
git checkout 9b41a4ea5ade8e1250b9c1b279f3a9c098811b5a
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DCMAKE_CXX_FLAGS=-std=c++11 \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_UNITTESTS=OFF \
    -DG2O_USE_CHOLMOD=OFF \
    -DG2O_USE_CSPARSE=ON \
    -DG2O_USE_OPENGL=OFF \
    -DG2O_USE_OPENMP=OFF \
    ..
make -j4
make install
cd ../../

# Pangolin Viewer
git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
git checkout ad8b5f83222291c51b4800d5a5873b0e90a0cf81
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j4
make install
cd ../../


# SocketViewer
git clone https://github.com/shinsumicco/socket.io-client-cpp.git
cd socket.io-client-cpp
git submodule init
git submodule update
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DBUILD_UNIT_TESTS=OFF \
    ..
make -j4
make install
cd ../../../

# Protobuf Install
apt install -y libprotobuf-dev protobuf-compiler

## Stella Build
cd stella_vslam
mkdir build && cd build
cmake \
    -DUSE_PANGOLIN_VIEWER=ON \
    -DINSTALL_PANGOLIN_VIEWER=ON \
    -DUSE_SOCKET_PUBLISHER=OFF \
    -DBUILD_TESTS=ON \
    -DBUILD_EXAMPLES=ON \
    ..
make -j4
make install

## ROS2 setup
colcon build --symlink-install --cmake-args -DUSE_PANGOLIN_VIEWER=ON -DUSE_SOCKET_PUBLISHER=OFF