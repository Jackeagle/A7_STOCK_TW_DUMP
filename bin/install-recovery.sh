#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12458240:e38b340b1fd4a740dca014bc144ff4ec137eba3d; then
  applypatch EMMC:/dev/block/bootdevice/by-name/boot:11172096:c9a16bd59eaed8d101282c39ce88136f6d099ea8 EMMC:/dev/block/bootdevice/by-name/recovery e38b340b1fd4a740dca014bc144ff4ec137eba3d 12458240 c9a16bd59eaed8d101282c39ce88136f6d099ea8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
