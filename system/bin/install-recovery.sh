#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:14540800:0d97849038382ea7aa9bebaee9ead16d1acec10e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10403840:c07b4c7b5d164f2e4acd3bf8be9b387a4d015f4c EMMC:/dev/block/bootdevice/by-name/recovery 0d97849038382ea7aa9bebaee9ead16d1acec10e 14540800 c07b4c7b5d164f2e4acd3bf8be9b387a4d015f4c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
