#!/bin/bash

# ---------------------------------------------------------------------------
# If for some reason, while working on Ubuntu, you run out of memory and when 
# you restart the computer it doesn't boot, it's most likely because there isn't 
# enough memory to start the system. In this case, you need to enter recovery mode 
# to solve this situation.

# Typically, when you turn on the computer and press the ESC key multiple times, 
# it will take you into recovery mode and redirect you to the GRUB shell. 
# If your case is that you have a prompt in the GRUB shell with no options to select, 
# these steps may help you.
# ---------------------------------------------------------------------------

# In GRUB shell, list all available partitions
ls 

# Example output: 
# (hd0) (hd0,gpt1) (hd1,gpt2)

# Identify the correct partition that contains the /boot folder and set it as the root partition
set root=(hd1,gpt2)

# Boot with single-user mode, replace <your-kernel-version> with the actual version
linux /boot/vmlinuz-<your-kernel-version> root=/dev/nvme0n1p2 ro single
initrd /boot/initrd.img-<your-kernel-version>
boot

# Once in single-user mode (command line), check disk usage
df -h

# Find large files
du -ah / | sort -rh | head -20

# If you're sure, remove all content in a folder
rm -rf /<path>/<to>/<folder>/*

# Remove specific large file (replace with the actual path)
rm -f /<path>/<to>/<large>/<file>

# Remove temporary files
rm -rf /tmp/*

# Clear APT cache (optional but helps free space)
apt-get clean

# Check disk usage again after cleaning
df -h

# If disk usage is improved, reboot the system
reboot
