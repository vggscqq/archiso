#!/bin/bash

BUILD_DIR="/tmp/work"

# Remove old build files if they exist
sudo rm -rf "$BUILD_DIR"
sudo rm -f *.iso

# Write hostname
echo -n "archiso_$(date +%Y-%m-%d)" | sudo tee archlive/airootfs/etc/hostname

# Run mkarchiso to build the ISO
sudo mkarchiso -v -w "$BUILD_DIR" -o . archlive

# Test in qemu
./qemubootiso.sh
