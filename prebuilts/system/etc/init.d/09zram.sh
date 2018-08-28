#!/system/bin/sh

sleep 2

ifoff=`getprop ro.config.zram.support`
size=`getprop ro.config.zram.disksize 256M`
swapns=`getprop ro.config.swappiness 10`
compr=`getprop ro.config.zram.compressor lz4`

# Resets the disksize to zero
echo 1 > /sys/block/zram0/reset;

# Compression algorithm [lzo,lz4]
echo $compr > /sys/block/zram0/comp_algorithm;

if [ $ifoff == "false" ]; then
 # Deactivate zRam
 swapoff /dev/block/zram0;
 exit;
fi

# Set the disk size
echo $size > /sys/block/zram0/disksize;

# Create the swap file system
mkswap /dev/block/zram0;

# Enable the swap partition with high priority
swapon -p 10 /dev/block/zram0;

echo $swapns > /proc/sys/vm/swappiness

