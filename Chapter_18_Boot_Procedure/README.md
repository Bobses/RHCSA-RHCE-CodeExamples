
Systemd
-------

    systemctl list-units --type=service --all
    systemctl list-dependencies vsftpd
    cat /usr/lib/systemd/system/firewalld.service
    systemctl -t mount
    systemctl show boot.mount
    systemctl cat boot.mount
    systemctl --type=target --all
    systemctl get-default

    /etc/systemd/system/multi-user.target.wants/vsftpd.service to /usr/lib/systemd/system/vsftpd.service.


Systemd dep.
------------

    systemctl --type=target
    journalctl -u basic.target

    ├── system
    │   ├── basic.target.wants
    │   │   ├── firewalld.service -> /usr/lib/systemd/system/firewalld.service
    │   │   └── microcode.service -> /usr/lib/systemd/system/microcode.service
    . . .

Grub2
-------

    /etc/default/grub
    yum install man-pages
    man 7 bootparam

    grub2-mkconfig -o /boot/grub2/grub.cfg
