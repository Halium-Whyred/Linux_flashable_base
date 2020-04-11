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

ui_print " remove rootfs.img old ";
rm -rf /data/rootfs.img;
ui_print " ";
ui_print " Remove Rootfs Done ";
ui_print " ";
ui_print " Install 10% ";
ui_print " ";
ui_print " ";

## Remove System.img

ui_print " remove system.img old ";
rm -rf /data/system.img;
ui_print " ";
ui_print " Remove System Done ";
ui_print " ";
ui_print " Install 25% ";
ui_print " ";
ui_print " ";

## Remove Vendor.img

ui_print " remove vendor.img old ";
rm -rf /data/vendor.img;
ui_print " ";
ui_print " Remove Vendor Done ";
ui_print " ";
ui_print " Install 35%";
ui_print " ";
ui_print " ";

## Copy Rootfs System Vendor To Data

ui_print " Copy rootfs.img to /data ";
cp -fpr /data/ubports/data/rootfs.img /data/;
ui_print " ";
ui_print " Copy Rootfs Done ";
ui_print " ";
ui_print " Install 45% ";
ui_print " ";
ui_print " ";

ui_print " Copy system.img to /data ";
cp -fpr /data/ubports/data/system.img /data/;
ui_print " ";
ui_print " Copy System Done ";
ui_print " ";
ui_print " Install 55% ";
ui_print " ";
ui_print " ";

ui_print " Copy Vendor.img To /data ";
cp -fpr /data/ubports/data/vendor.img /data/;
ui_print " ";
ui_print " Copy Vendor Done ";
ui_print " ";
ui_print " Install 65% ";
ui_print " ";
ui_print " ";

## Path File To Rootfs

## Create Folder Rootfs Mount

ui_print " Create Folder /rootfs-mount ";
mkdir /rootfs-mount;
ui_print " ";
ui_print " Create Folder Done ";
ui_print " ";
ui_print " Install 75% ";
ui_print " ";
ui_print " ";

## Mount Rootfs.img

ui_print " Mount rootfs.img to /rootfs-mount ";
mount /data/rootfs.img /rootfs-mount;
ui_print " ";
ui_print " Mount Done ";
ui_print " ";
ui_print " Install 85% ";
ui_print " ";
ui_print " ";

## Remove Old File

ui_print " Remove mount-android.conf ";
rm -rf /rootfs-mount/etc/init/mount-android.conf;
ui_print " ";
ui_print " Remove Done ";
ui_print " ";
ui_print " ";
ui_print " Remove rc.local ";
rm -rf /rootfs-mount/etc/rc.local;
ui_print " ";
ui_print " Remove Done ";
ui_print " ";
ui_print " Install 90% ";
ui_print " ";
ui_print " ";

## Copy Patch File

ui_print " Copy mount-android.conf ";
cp -fpr /data/ubports/rootfs-mount/etc/init/mount-android.conf /rootfs-mount/etc/init/;
ui_print " ";
ui_print " Copy Done ";
ui_print " ";
ui_print " ";
ui_print " Copy rc.local ";
cp -fpr /data/ubports/rootfs-mount/etc/rc.local /rootfs-mount/etc/;
ui_print " ";
ui_print " Copy Done ";
ui_print " ";
ui_print " Install 95% ";
ui_print " ";
ui_print " ";

## Chmod File Copy 

ui_print " Chmod 0644 File mount-android.conf";
chmod 0644 /rootfs-mount/etc/init/mount-android.conf;
ui_print " ";
ui_print " Chmod Done ";
ui_print " ";
ui_print " ";
ui_print " Chmod 0755 File rc.local  ";
chmod 0755 /rootfs-mount/etc/rc.local;
ui_print " ";
ui_print " Chmod Done ";
ui_print " ";
ui_print " Install 100% ";
ui_print " ";
ui_print " ";

## Install Done 
