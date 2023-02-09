#!/bin/bash
cd ..
source build/envsetup.sh
lunch rpi3-eng
make ramdisk systemimage vendorimage
