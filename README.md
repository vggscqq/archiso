# Arch Linux ISO Customization

This repository contains files for creating a custom version of Arch Linux ISO using [archiso](https://wiki.archlinux.org/title/Archiso). 

## Features

- **git**: Included for version control and easier collaboration.
- **Fish shell**: Configured to show IP at login.
- **SSH server with empty password authentication**: The SSH server is configured to allow empty password authentication for convenience. SHH connection is opened on port `22`.

## Requirements

- **Archiso**: archiso is required to build the ISO.
- **Parallel**: Parallel is required for building the ISO in parallel.
- **dd**: A command-line utility available on Linux and macOS for creating bootable USB drives from ISO images.
- **qemu**: For testing in a VM.

## Building the ISO

To build the custom ISO, use the following command:

```bash
sudo build.sh
```