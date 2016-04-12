
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
    nmcli con show "Wired connection 1"
    nmcli dev show

Add Ip to host (persistent )
--------------------
    nmcli con add con-name "static-ip" ifname enp0s3 autoconnect no type ethernet ip4 192.168.0.101/24
    nmcli con up static-ip
