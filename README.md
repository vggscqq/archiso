# Arch Linux ISO Customization

This repository contains files for creating a custom version of Arch Linux ISO using [archiso](https://wiki.archlinux.org/title/Archiso). This ISO includes enhancements such as git, the Oh My Zsh theme for root.

## Features

- **Added git**: [Git](https://git-scm.com/) is included for version control and easier collaboration.
- **Oh My Zsh for root**: Installed [Oh My Zsh](https://ohmyz.sh/) for the root user to improve the command-line experience.
- **SSH server with empty password authentication**: The SSH server is configured to allow empty password authentication for convenience. SHH connection is opened on port `3469`.
- **Optimized pacman mirrors**: Mirrors for pacman have been sorted for faster package installation and updates. (for Ukraine)

## Requirements

- **[Archiso](https://wiki.archlinux.org/title/Archiso)**: archiso is required to build the ISO.
- **[Parallel](https://www.gnu.org/software/parallel/)(optional)**: Parallel is required for building the ISO in parallel.
- **[dd](https://wiki.archlinux.org/title/Dd) (Linux or macOS)**: A command-line utility available on Linux and macOS for creating bootable USB drives from ISO images.
- **[Rufus](https://rufus.ie/) (Windows)**: A lightweight Windows application for creating bootable USB drives from ISO images. It provides a user-friendly interface and supports various file systems and partition schemes.

Both `dd` and `Rufus` can be used as alternatives to create bootable USB drives from the generated ISO file, depending on your operating system.

## Building the ISO

To build the custom ISO, use the following command:

```bash
sudo mkarchiso -v -w /tmp/work -o . archlive
```

If build cause an error you can try to use iso from [releases](https://github.com/Field-Effect-Transistor/archiso/releases).

### Explanation of Flags

- `-v`: Enables verbose mode, which provides detailed output during the ISO creation process.
- `-w /tmp/work`: Specifies the directory for working files (temporary files created during the process).
- `-o .`: Defines the output directory where the final ISO will be saved (in this case, the current directory).
- `archlive`: The name of the directory containing the configuration for creating the ISO.

For more details run `mkarchiso --help`

## Cleaning the Work Directory

After building the ISO, you can clean up the working directory using the following command:

```bash
sudo rm -rf /tmp/work
```

This command deletes the `/tmp/work` directory and all its contents, freeing up space and removing temporary files created during the ISO build process.

## Creating a Bootable USB Drive

### Linux or macOS

To create a bootable USB drive from the generated ISO, use the following command:

```bash
sudo dd if=path_/to/iso/arch*.iso of=/dev/sdX
```

Where `path_/to/iso/arch*.iso` is the path to the generated ISO file, and `/dev/sdX` is the device name for the target USB drive (run `lsblk`).

### Windows

On Windows, you can use the [`Rufus`](https://rufus.ie/) application to create bootable USB drives from the generated ISO.
