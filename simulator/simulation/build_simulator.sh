#!/usr/bin/env bash

#
# This file differs from the original that can be found in https://github.com/smartmicro/smartmicro_ros2_radars
#


work_dir=$(pwd)
set -e

cd /code/simulator/simulation

mkdir -p build_dir
cmake -G "Unix Makefiles" -S. -Bbuild_dir \
-DCMAKE_INSTALL_PREFIX=out \
-DSMART_ACCESS_LIB_FOLDER=../../umrr_ros2_driver/smartmicro/lib-linux-armv8-gcc_9
make -C build_dir
make -C build_dir install
