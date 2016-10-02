#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11951404:98446f5fade7700ab458a11c9ee9ffa34f0115af; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:10794280:a11ac4ca2ecea379472526b8559b00adf8ba1adc EMMC:/dev/block/bootdevice/by-name/recovery 98446f5fade7700ab458a11c9ee9ffa34f0115af 11951404 a11ac4ca2ecea379472526b8559b00adf8ba1adc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
