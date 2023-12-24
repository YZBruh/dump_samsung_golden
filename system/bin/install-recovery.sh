#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p21:11347968:1468fb6a646536afae039cf46a057352999fd0e1; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p20:6346752:f7016816da19055fae782b2205f7cf16b7f6e044 EMMC:/dev/block/mmcblk0p21 1468fb6a646536afae039cf46a057352999fd0e1 11347968 f7016816da19055fae782b2205f7cf16b7f6e044:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
