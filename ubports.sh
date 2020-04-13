# Ubuntu Touch Port
# Base Flashable With Erfan . Edit By Nobi Nobita

OUTFD=/proc/self/fd/$1;

# ui_print <text>
ui_print() { echo -e "ui_print $1\nui_print" > $OUTFD; }

## Ubuntu Touch Install For Whyred

## Banner
ui_print " Base Flashable by erfanoabdi ";
ui_print " Maintainer : ";
ui_print "    big help with halium and ubports, fix errors - TheKit ";
ui_print "    halium 9 build, ubports testing works, fix errors- srmane4444 ";
ui_print "    - MarcoDS_bit, Builder, Fix Any Errors ";
ui_print "    - polanobi, Fix Any Errors, Builder, Create Zip ";
ui_print " Xiaomi Redmi Note 5 Pro ";
ui_print " Code Name : Whyred ";
ui_print " https://t.me/Halium_Whyred ";
ui_print " https://t.me/sfos_whyred ";



## Remove Old Rootfs

ui_print " ";
ui_print " ";
ui_print " ";
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

ui_print " Create Folder Mount ";
mkdir -p /Ubuntu/Rootfs;
mkdir -p /Ubuntu/System;
mkdir -p /Ubuntu/Vendor;
ui_print " ";
ui_print " Create Folder Done ";
ui_print " ";
ui_print " Install 75% ";
ui_print " ";
ui_print " ";

## Mount 

ui_print " Mount rootfs.img to /Ubuntu/Rootfs ";
mount /data/rootfs.img /Ubuntu/Rootfs;
ui_print " Mount system.img to /Ubuntu/System ";
mount /data/system.img /Ubuntu/System;
ui_print " Mount vendor.img to /Ubuntu/Vendor ";
mount /data/vendor.img /Ubuntu/Vendor;
ui_print " ";
ui_print " Mount Done ";
ui_print " ";
ui_print " Install 85% ";
ui_print " ";
ui_print " ";

## Remove Old File

ui_print " Remove mount-android.conf ";
rm -rf /Ubuntu/Rootfs/etc/init/mount-android.conf;
ui_print " ";
ui_print " Remove Done ";
ui_print " ";
ui_print " ";
ui_print " Remove rc.local ";
rm -rf /Ubuntu/Rootfs/etc/rc.local;
ui_print " ";
ui_print " Remove Done ";
ui_print " ";
ui_print " Install 90% ";
ui_print " ";
ui_print " ";

## Copy Patch File

ui_print " Copy mount-android.conf ";
cp -r /data/ubports/data/rootfs-mount/etc/init/mount-android.conf /Ubuntu/Rootfs/etc/init/;
ui_print " ";
ui_print " Copy Done ";
ui_print " ";
ui_print " ";
ui_print " Copy rc.local ";
cp -r /data/ubports/data/rootfs-mount/etc/rc.local /Ubuntu/Rootfs/etc/;
ui_print " ";
ui_print " Copy Done ";
ui_print " ";
ui_print " Install 95% ";
ui_print " ";
ui_print " ";

## Chmod File Copy 

ui_print " Chmod 0644 File mount-android.conf";
chmod 0644 /Ubuntu/Rootfs/etc/init/mount-android.conf;
ui_print " ";
ui_print " Chmod Done ";
ui_print " ";
ui_print " ";
ui_print " Chmod 0755 File rc.local  ";
chmod 0755 /Ubuntu/Rootfs/etc/rc.local;
ui_print " ";
ui_print " Chmod Done ";
ui_print " ";
ui_print " Install 100% ";
ui_print " ";
ui_print " ";

## Create UDEV 

ui_print " Copy && Create udev ";
cat /Ubuntu/System/ueventd*.rc /Ubuntu/Vendor/ueventd*.rc | grep ^/dev | sed -e 's/^\/dev\///' | awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' > /Ubuntu/Rootfs/etc/udev/rules.d/70-ubport.rules;
ui_print " ";
ui_print " Create Done ";
ui_print " ";
ui_print " Install 110% :)) ";
ui_print " ";
ui_print " ";

## Settings Phone DPI

ui_print "Setting phone DPI";
echo "GRID_UNIT_PX=24" >> /Ubuntu/Rootfs/etc/ubuntu-touch-session.d/android.conf;
echo "QTWEBKIT_DPR=2.0" >> /Ubuntu/Rootfs/etc/ubuntu-touch-session.d/android.conf;
echo "FORM_FACTOR=handset" >> /Ubuntu/Rootfs/etc/ubuntu-touch-session.d/android.conf;
ui_print " ";
ui_print " Set DPI Done ";
ui_print " ";
ui_print " ";

## Un Mount 

ui_print " Un Mount ";
umount /Ubuntu/Rootfs;
umount /Ubuntu/System;
umount /Ubuntu/Vendor;
ui_print " ";
ui_print " Un Mount Done ";
ui_print " ";
ui_print " Install 115% =.= ";
ui_print " ";
ui_print " ";

## Rm Flash File

ui_print " Remove Old Flash File ";
rm -rf /data/ubports;
rm -rf /Ubuntu
ui_print " ";
ui_print " Remove Done ";
ui_print " ";
ui_print " Install 125% @.@ ";
ui_print " ";
ui_print " ";

## Install Done 
 
