#!/bin/bash
cpu_isa=$(uname -a | awk '{print $12}')
version=2.8.0-9

if [ $cpu_isa == "x86_64" ]; then
        isa=x64
else
        isa=arm64
fi

sudo rm -r /opt/xpack-qemu-arm-${version}
sudo rm /usr/bin/qemu-system-gnuarmeclipse
