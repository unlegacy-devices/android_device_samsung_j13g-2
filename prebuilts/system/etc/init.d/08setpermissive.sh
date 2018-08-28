#!/system/bin/sh

# Waiting...
sleep 3

# 0 - permissive
# 1 - enforcing
su -c 'echo 0 > /sys/fs/selinux/enforce'
