# Ubuntu Touch Port
# Base Flashable With Erfan . Edit By Nobi Nobita
# https://t.me/polanobi
# https://t.me/srmane4444
# https://t.me/MarcoDS_bit

OUTFD=/proc/self/fd/$1;

# ui_print <text>
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }

## Ubuntu Touch Install For Whyred 

## Remove Old Rootfs
rm -rf /data/rootfs.img;

## Remove System.img

rm -rf /data/system.img;

## Remove Vendor.img

rm -rf /data/vendor.img;

## Copy Rootfs System Vendor To Data

cp -fpr /data/ubports/data/* /data/;

## Path File To Rootfs

## Create Folder Rootfs Mount
mkdir /rootfs-mount;

## Mount Rootfs.img
mount /data/rootfs.img /rootfs-mount;

## Remove Old File
rm -rf /rootfs-mount/etc/init/mount-android.conf;
rm -rf /rootfs-mount/etc/rc.local;

## Copy Patch File
cp -fpr /data/ubports/rootfs-mount/etc/init/mount-android.conf /rootfs-mount/etc/init/;
cp -fpr /data/ubports/rootfs-mount/etc/rc.local /rootfs-mount/etc/;

## Chmod File Copy 
chmod 0644 /rootfs-mount/etc/init/mount-android.conf;
chmod 0755 /rootfs-mount/etc/rc.local;

## Install Done 
