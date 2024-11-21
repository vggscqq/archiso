#!/bin/bash

qemu-system-x86_64 \
    -m 4G \
    -smp 4 \
    -cdrom *.iso \
    -boot d \
    -nic user,id=vmnic,hostfwd=tcp::2222-:22 \
    -cpu host \
    -enable-kvm \
    -bios /usr/share/edk2/x64/OVMF.4m.fd \
    -display gtk
