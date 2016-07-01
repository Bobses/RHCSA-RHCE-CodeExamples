
Fix boot
---------

    grub2-mkconfig -o /boot/grub2/grub.cfg
    chroot /mnt/sysimage
    grub2-install /dev/sda
