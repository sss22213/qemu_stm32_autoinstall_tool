#!/bin/bash 

cpu_isa=$(uname -a | awk '{print $12}')
version=2.8.0-9

if [ $cpu_isa == "x86_64" ]; then
	isa=x64
else
	isa=arm64
fi
	
mkdir -p ~/opt
wget https://github.com/xpack-dev-tools/qemu-arm-xpack/releases/download/v${version}/xpack-qemu-arm-${version}-linux-${isa}.tar.gz
tar xvf xpack-qemu-arm-${version}-linux-${isa}.tar.gz
sudo cp -r xpack-qemu-arm-${version} /opt
sudo chmod -R -w /opt/xpack-qemu-arm-${version}
sudo ln -s /opt/xpack-qemu-arm-${version}/bin/qemu-system-gnuarmeclipse /usr/bin/qemu-system-gnuarmeclipse
