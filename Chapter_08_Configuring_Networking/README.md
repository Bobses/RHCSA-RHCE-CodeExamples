Common
--------

    ip link show
    ip addr show enp0s3
    ip route show

Add ip add to hosts ( non persistent )
---------------------------------------

    server-1$ ip addr add 192.168.0.10/24 dev enp0s3
    server-2$ ip addr add 192.168.0.11/24 dev enp0s3
    server-2$ ssh root@192.168.0.10

NetworkManager's
----------------

    nmcli con show
    nmcli c s
    nmcli con show "Wired connection 1"
    nmcli dev show

Add Ip to host (persistent )
-----------------------------

    nmcli con add con-name "static-ip" ifname enp0s3 autoconnect yes save yes type ethernet gw4 192.168.0.1 ip4 192.168.0.100/24
    nmcli con up static-ip

    nmcli con mod static-ip ipv4.address 192.168.0.110/24
    nmcli con down static-ip
    nmcli con up static-ip

    nmcli con mod static-ip ipv4.gateway 192.168.0.1

    nmcli device status
    nmcli device show enp0s3

Network with nmtui
------------------

    nmtui
    /etc/sysconfig/network-scripts/ifcfg-static-ip

Set HostName and Name Resolution
--------------------------------

    hostnamectl set-hostname server-2

Config directly
---------------

    vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
