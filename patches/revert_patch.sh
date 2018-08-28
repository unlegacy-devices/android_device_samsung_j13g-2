#!/bin/bash

echo -e "\033[1;33m*** Starting reverting patches... ***\033[0m"

cd ../../../..

rm -rf build
rm -rf external/tinyalsa
rm -rf frameworks/av
rm -rf frameworks/base
rm -rf frameworks/opt/telephony
rm -rf hardware/libhardware
rm -rf packages/apps/Bluetooth
rm -rf packages/apps/FMRadio
rm -rf packages/apps/CellBroadcastReceiver
rm -rf system/bt
rm -rf system/core
rm -rf system/media

repo sync build
repo sync external/tinyalsa
repo sync frameworks/av
repo sync frameworks/base
repo sync frameworks/opt/telephony
repo sync hardware/libhardware
repo sync packages/apps/Bluetooth
repo sync packages/apps/FMRadio
repo sync packages/apps/CellBroadcastReceiver
repo sync system/bt
repo sync system/core
repo sync system/media

cd device/samsung/j13g/patches

echo -e "\033[1;33m*** Reverting patches is finished ***\033[0m"
