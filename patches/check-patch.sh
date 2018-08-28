#!/bin/bash

echo -e "\033[1;33m*** Starting checking patches... ***\033[0m"

cd ../../../..

cd build

git apply -v --check ../device/samsung/j13g/patches/build.patch

cd ../external/tinyalsa

git apply -v --check ../../device/samsung/j13g/patches/external_tinyalsa.patch

cd ../../frameworks/av

git apply -v --check ../../device/samsung/j13g/patches/frameworks_av.patch

cd ../../frameworks/base

git apply -v --check ../../device/samsung/j13g/patches/frameworks_base.patch

cd ../../frameworks/opt/telephony

git apply -v --check ../../../device/samsung/j13g/patches/frameworks_opt_telephony.patch

cd ../../../hardware/libhardware

git apply -v --check ../../device/samsung/j13g/patches/hardware_libhardware.patch

cd ../../packages/apps/Bluetooth

git apply -v --check ../../../device/samsung/j13g/patches/packages_apps_Bluetooth.patch

cd ../../packages/apps/FMRadio

git apply -v --check ../../../device/samsung/j13g/patches/packages_apps_FMRadio.patch

cd ../../packages/apps/CellBroadcastReceiver

git apply -v --check ../../../device/samsung/j13g/patches/packages_apps_CellBroadcastReceiver.patch

cd ../../../system/bt

git apply -v --check ../../device/samsung/j13g/patches/system_bt.patch

cd ../../../system/core

git apply -v --check ../../device/samsung/j13g/patches/system_core.patch

cd ../../system/media

git apply -v --check ../../device/samsung/j13g/patches/system_media.patch

cd ../../device/samsung/j13g/patches

echo -e "\033[1;33m*** Checking patches is finished ***\033[0m"
