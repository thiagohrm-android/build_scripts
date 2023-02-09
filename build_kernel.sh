#!/bin/bash
cd ..
cd kernel/arpi
ARCH=arm64 scripts/kconfig/merge_config.sh arch/arm64/configs/bcm2711_defconfig kernel/configs/android-base.config kernel/configs/android-recommended.config
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make Image.gz
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- DTC_FLAGS="-@" make broadcom/bcm2711-rpi-4-b.dtb
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- DTC_FLAGS="-@" make overlays/vc4-kms-v3d-pi4.dtbo
