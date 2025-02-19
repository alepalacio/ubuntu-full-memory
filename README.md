# Ubuntu Full Memory Recovery Script

## Overview

This script is intended for situations where you are working on an Ubuntu system and experience a memory shortage. If, after restarting the system, Ubuntu does not boot, it may be due to insufficient memory available to start the operating system. In this case, the script will guide you through entering recovery mode to fix the issue.

When you power on your system, pressing the **ESC** key multiple times will bring up the **GRUB shell**. If you find yourself stuck at a GRUB prompt with no options to select, follow the steps below to proceed with recovery and free up disk space.

## Steps

### 1. Boot into GRUB Shell
   - After powering on your computer, press the **ESC** key repeatedly to enter **recovery mode**. You will be redirected to the GRUB shell.
   
   - If you encounter a GRUB shell prompt with no options, follow these steps to resolve the issue.

### 2. List Available Partitions
   In the GRUB shell, list all available partitions to identify the correct partition containing the `/boot` folder.

### 3. Set the Root Partition
Identify the correct partition and set it as the root partition. This will be the partition that contains the /boot folder.

### 4. Boot in Single-User Mode
Boot the system in single-user mode. Replace <your-kernel-version> with the actual kernel version on your system.

### 5. Check Disk Usage
Once in single-user mode (command line), check your system's disk usage to identify space problems.

### 6. Find Large Files
To locate large files consuming disk space, use the following command. This will show the top 20 largest files and directories.

### 7. Remove Large Files and Folders
If you find large files or folders that can be deleted, remove them to free up space.

### 8. Clean Temporary Files
Clean up temporary files that might have accumulated.

### 9. Clear APT Cache (Optional)
Clearing the APT cache helps free up additional space by removing cached package files.

### 10. Recheck Disk Usage
Check disk usage again to ensure space has been freed.

### 11. Reboot the System
Finally, reboot the system and surely, your computer will work ok again!!

#### Author
Alejandro Palacio