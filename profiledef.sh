#!/usr/bin/env bash
# profiledef.sh - ThatArchOS Build Profile

iso_name="thatarchos"
iso_label="THATARCHOS_$(date +%Y%m)"
iso_publisher="ThatArchOS Project <https://github.com/thatarchos>"
iso_application="ThatArchOS with BRONME Desktop Environment"
iso_version="$(date +%Y.%m.%d)"
install_dir="thatarchos"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '15')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/usr/bin/wine-smart-launcher"]="0:0:755"
  ["/usr/bin/bronme-spotlight"]="0:0:755"
)
