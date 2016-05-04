#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12460288:8d090d2b511d1201599d2e6746a00bc17a73b44d; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11174144:d5bd6720925e57fd09846c64c08353a89b830867 EMMC:/dev/block/bootdevice/by-name/recovery 8d090d2b511d1201599d2e6746a00bc17a73b44d 12460288 d5bd6720925e57fd09846c64c08353a89b830867:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
