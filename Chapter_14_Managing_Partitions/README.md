
Disk Size measurement
---------------------

    1 byte = 1 byte

    1 KB = 1000 bytes
    1 KiB = 1024 bytes

       1 KiB = 1.024 KB = 1024 bytes

    1 MB  = 1000 * 1 KB = 1000 * 1000 bytes  = 1 000 000 bytes
    1 MiB = 1024 * 1 KiB = 1024 * 1024 bytes = 1 048 576 bytes

      1 MiB = 1048 576 bytes = 1048.576 KB

ext3/4 vs XFS
--------------

| Task  | ext3/4 | XFS |
|-|-|-|
| Create a file system  |  mkfs.ext4 or mkfs.ext3 | mkfs.xfs  |
| File system check | e2fsck | xfs_repair |
| Resizing a file system  | resize2fs | xfs_growfs |
| Save an image of a file system | e2image | xfs_metadump and xfs_mdrestore |
| Label or tune a file system | tune2fs | xfs_admin |
| Backup a file system	dump and restore | xfsdump | xfsrestore |

Create partition
-----------------

    fdisk -l /dev/sdb
    cat /proc/partitions
    fdisk /dev/sdb

    Command (m for help): n
    Partition type:
       p   primary (0 primary, 0 extended, 4 free)
       e   extended
    Select (default p): p
    Partition number (1-4, default 1):
    First sector (2048-2097151, default 2048):
    Using default value 2048
    Last sector, +sectors or +size{K,M,G} (2048-2097151, default 2097151): +100M

    Command (m for help): p
    Disk /dev/sdb: 1073 MB, 1073741824 bytes, 2097152 sectors
    Units = sectors of 1 * 512 = 512 bytes
    Sector size (logical/physical): 512 bytes / 512 bytes
    I/O size (minimum/optimal): 512 bytes / 512 bytes
    Disk label type: dos
    Disk identifier: 0x32471c90

       Device Boot      Start         End      Blocks   Id  System
    /dev/sdb1            2048      206847      102400   83  Linux

    Command (m for help): w

Create / mount partition
--------------------------

*xfs*

    journalctl  -k _KERNEL_SUBSYSTEM=scsi
    fdisk /dev/sdb
    mkfs.xfs -V /dev/sdb1
    fsck -t xfs -V -r /dev/sdb1
    mount -t xfs /dev/sdb1 /mnt/sdb1
    nano /etc/fstab >
      /dev/sdb1 /mnt/sdb1  xfs     defaults        0 0

*ext4*

    mkfs.ext4 /dev/sdb3
    mkdir /mnt/sdb3
    mount /dev/sdb3 /mnt/sdb3
    tune2fs -l /dev/sdb3

Mount by UUID
--------------

    blkid
    xfs_admin -u /dev/sdb2
    echo "UUID=49588c33-5276-4d9a-983b-c87e59abf5f8 /mnt/sdb2 xfs     defaults        0 0" > /etc/fstab

Add Swap
---------

*As partition*

    gdisk /dev/sdc
    mkswap /dev/sdc3
    swapon -s
    free -m
    swapon /dev/sdc3
    free -m

*As file*

    dd if=/dev/zero of=/swapfile bs=1M count=100
    mkswap /swapfile
    swapon /swapfile
