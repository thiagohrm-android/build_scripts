#!/bin/bash
cd ..
cd kernel/rpi
ARCH=arm scripts/kconfig/merge_config.sh arch/arm/configs/bcm2709_defconfig kernel/configs/android-base.config kernel/configs/android-recommended.config
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make zImage
ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make dtbs
