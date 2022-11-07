#!/usr/bin/env bash

# exit when any command fails
set -e

# Make build folder
STELLA_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd .. && pwd )
BUILD_FOLDER=$STELLA_DIR/stella_build
BUILD_THREADS=7

mkdir -p $BUILD_FOLDER
cd $BUILD_FOLDER
touch "COLCON_IGNORE"

## Dependencies
sudo apt update -y
sudo apt install -y build-essential pkg-config cmake git wget curl unzip \
                    libatlas-base-dev libsuitesparse-dev \
                    libgtk-3-dev ffmpeg libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev \
                    gfortran \
                    binutils-dev \
                    libyaml-cpp-dev libgflags-dev sqlite3 libsqlite3-dev \
                    libglew-dev \
                    autogen autoconf libtool \
                    nodejs \
                    libopencv-dev python3-opencv

# Node.js
cd $BUILD_FOLDER
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Eigen Install
cd $BUILD_FOLDER
wget -q https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.bz2
tar xf eigen-3.3.7.tar.bz2
rm -rf eigen-3.3.7.tar.bz2
cd eigen-3.3.7
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
sudo make -j$BUILD_THREADS
sudo make install

# OpenCV Install
cd $BUILD_FOLDER
# wget -q https://github.com/opencv/opencv/archive/3.4.0.zip
# unzip -q 3.4.0.zip
# rm -rf 3.4.0.zip
# cd opencv-3.4.0
# mkdir -p build && cd build
# cmake \
#     -DCMAKE_BUILD_TYPE=Release \
#     -DCMAKE_INSTALL_PREFIX=/usr/local \
#     -DENABLE_CXX11=ON \
#     -DBUILD_DOCS=OFF \
#     -DBUILD_EXAMPLES=OFF \
#     -DBUILD_JASPER=OFF \
#     -DBUILD_OPENEXR=OFF \
#     -DBUILD_PERF_TESTS=OFF \
#     -DBUILD_TESTS=OFF \
#     -DWITH_EIGEN=ON \
#     -DWITH_FFMPEG=ON \
#     -DWITH_OPENMP=ON \
#     ..
# sudo make -j$BUILD_THREADS
# sudo make install

# FBoW
cd $BUILD_FOLDER
if [ ! -d "FBoW" ] ; then
    git clone https://github.com/stella-cv/FBoW.git
fi
cd FBoW
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
sudo make -j$BUILD_THREADS
sudo make install


# G2O
cd $BUILD_FOLDER
if [ ! -d "g2o" ] ; then
    git clone https://github.com/RainerKuemmerle/g2o.git
fi
cd g2o
git checkout 9b41a4ea5ade8e1250b9c1b279f3a9c098811b5a
mkdir -p build && cd build
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
sudo make -j$BUILD_THREADS
sudo make install

# Pangolin Viewer
cd $BUILD_FOLDER
if [ ! -d "Pangolin" ] ; then
    git clone https://github.com/stevenlovegrove/Pangolin.git
fi
cd Pangolin
git checkout ad8b5f83222291c51b4800d5a5873b0e90a0cf81
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
sudo make -j$BUILD_THREADS
sudo make install


# SocketViewer
cd $BUILD_FOLDER
if [ ! -d "socket.io-client-cpp" ] ; then
    git clone https://github.com/shinsumicco/socket.io-client-cpp.git
fi
cd socket.io-client-cpp
git submodule init
git submodule update
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DBUILD_UNIT_TESTS=OFF \
    ..
sudo make -j$BUILD_THREADS
sudo make install

# Protobuf Install
cd $BUILD_FOLDER
wget -q https://github.com/google/protobuf/archive/v3.6.1.tar.gz
tar xf v3.6.1.tar.gz
cd protobuf-3.6.1
./autogen.sh
./configure \
    --prefix=/usr/local \
    --enable-static=no
sudo make -j$BUILD_THREADS
sudo make install

## Stella Build
cd $BUILD_FOLDER
if [ ! -d "stella_vslam" ] ; then
    git clone --recursive https://github.com/stella-cv/stella_vslam.git
fi
cd stella_vslam 
git submodule update -i --recursive
mkdir -p build && cd build
cmake \
    -DUSE_PANGOLIN_VIEWER=ON \
    -DINSTALL_PANGOLIN_VIEWER=ON \
    -DUSE_SOCKET_PUBLISHER=OFF \
    -DBUILD_TESTS=ON \
    -DBUILD_EXAMPLES=ON \
    ..
sudo make -j$BUILD_THREADS
sudo make install

## ROS2 build
cd $BUILD_FOLDER
colcon build --symlink-install --cmake-args -DUSE_PANGOLIN_VIEWER=ON -DUSE_SOCKET_PUBLISHER=OFF
