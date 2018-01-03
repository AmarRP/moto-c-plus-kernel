#!/bin/bash

#Dhiraj

#Compile kernel with a build script to make things simple

git clone https://github.com/DhirajSurvase/GCC_4.8 toolchain


#change script accordingly
#mkdir -p ../out/target/product/$PRODUCT/obj/KERNEL_OBJ

export ARCH=arm ARCH_MTK_PLATFORM=mt6735

export KBUILD_BUILD_USER="DhirajMS"
export KBUILD_BUILD_HOST="WinterIsHere"

export CROSS_COMPILE=/home/younilban/lin14.1/kernel/motorola/panelli/toolchain/bin/arm-eabi-

#Defconfig for Moto C

make O=/home/younilban/lin14.1/out/target/product/panelli/obj/KERNEL_OBJ  ARCH=arm A158_debug_defconfig

#make -C $PWD O=$PWD/out ARCH=arm A158_defconfig

#make ARCH=arm A158_defconfig

make -j128 O=/home/younilban/lin14.1/out/target/product/panelli/obj/KERNEL_OBJ ARCH=arm

#make -j128 -C $PWD O=$PWD/out ARCH=arm

#make -j4 ARCH=arm

cd ../../..

make bootimage -j128
