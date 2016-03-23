

Kernel messages 
---------------

    journalctl --dmesg
    dmesg
    uname -r
    cat /etc/redhat-release
    cat /etc/centos-release
    hostnamectl
    
    
Kernel Modules
--------------

    udevadm monitor    
    lsmod
    modinfo ip_tables
    
    modinfo --showconfig bluetooth
    
    modprobe -r btusb; modprobe -r bluetooth