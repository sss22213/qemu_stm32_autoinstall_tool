##	qemu_stm32_autoinstall_tool

###	xpack information

xpack version: 2.8.0-9


[xpack ref](https://xpack.github.io/qemu-arm/install/)

---

### install
bash install.sh

### uninstall
bash uninstall.sh

### test

```
qemu-system-gnuarmeclipse --verbose --verbose --board STM32F4-Discovery \
--mcu STM32F407VG --gdb tcp::1234 -d unimp,guest_errors \
--semihosting-config enable=on,target=native \
--semihosting-cmdline blinky
```
