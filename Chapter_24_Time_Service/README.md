
Date / Time
------------

    date
    hwclock
    timedatectl

    timedatectl set-ntp 1
    ln -sf /usr/share/zoneinfo/ America/Los_Angeles /etc/localtime

    timedatectl set-timezone Europe/London

    yum install chrony
    systemctl start chronyd
    timedatectl set-ntp 1

    chronyc sources
