

## Bridge networking

Allows access pub-inet and ssh from host machine.

### VirtualBox settings

    Attached to : Bridge Adapter
    Name : "en0: Wifi"
    Promiscuoue Mode : "All"

### In guest os

    $ dhclient

### In host os

    $ ssh root@192.168.0.8

## NAT networking

Allows access pub-inet.

### VirtualBox settings

    Attached to : NAT
