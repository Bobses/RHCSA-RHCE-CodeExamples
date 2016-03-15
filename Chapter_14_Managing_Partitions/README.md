
Disk Size measurement
---------------------

    1 byte = 1 byte

    1 KB = 1000 bytes
    1 KiB = 1024 bytes

       1 KiB = 1.024 KB = 1024 bytes

    1 MB  = 1000 * 1 KB = 1000 * 1000 bytes  = 1 000 000 bytes
    1 MiB = 1024 * 1 KiB = 1024 * 1024 bytes = 1 048 576 bytes

      1 MiB = 1048 576 bytes = 1048.576 KB

Work with partitions
--------------------

Create partition

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
