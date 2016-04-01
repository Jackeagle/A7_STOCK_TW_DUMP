#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12452096:0941fa7a16282e2c34e1130afdfc0a0ca9bd5b97; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11165952:1c9ab04682edb249240fab7663615c011fe1dd6f EMMC:/dev/block/bootdevice/by-name/recovery 0941fa7a16282e2c34e1130afdfc0a0ca9bd5b97 12452096 1c9ab04682edb249240fab7663615c011fe1dd6f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
