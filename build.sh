#!/bin/bash
cd ..
source build/envsetup.sh
lunch rpi4-eng
make ramdisk systemimage vendorimage
