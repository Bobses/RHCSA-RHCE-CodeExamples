
Connect
--------

    virsh list
    virsh start host1
    (on host)
        /etc/default/grub ->
        GRUB_CMDLINE_LINUX=console=ttyS0

        grub2-mkconfig -o /boot/grub2/
    virsh console host1


Remove
--------

    virsh destroy host2 ( shutdown )
    virsh undefine host2 ( remove )


Install from KS
----------------

    sudo virt-install --name host3 --memory 1024 --network network=default --disk size=8 --location ftp://192.168.122.47/pub/centos7 --extra-args "ks=ftp://192.168.122.47/pub/ks.cfg"
