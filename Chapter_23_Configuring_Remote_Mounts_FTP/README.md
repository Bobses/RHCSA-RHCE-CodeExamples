
NFS mounting
--------------

    mount labipa. example.com:/data /mnt
    mount.nfs 192.168.122.200:/home /mnt/nfs/home -v
    vim ~~> /etc/fstab
      192.168.122.200:/home /mnt/nfs/home nfs vers=4,hard 0 0
    showmount -e 192.168.122.200
    server1:/share /nfs/mount/point nfs,_netdev,x-systemd. automount, sync 0 0

Samba
-----

    firewall-cmd --add-service samba-client
    smbclient -L 123.204.132.123
    mount -t cifs -o user=guest //192.168.122.200/data /mnt
    mount -o username=sambauser1 //server/share /somewhere
    //server1/data /mnt/data cifs _netdev,, x-systemd. automount,credentials=/root/creds 0 0

Ftp
------

    yum install -y vsftpd
    vim ~~>  /etc/vsftpd/vsftpd.conf

    anon_upload_enable=YES
    anon_mkdir_write_enable=YES
    anon_mask = 077 chown_uploads = yes chown_username = root

    systemctl enable vsftpd
    systemctl start vsftpd
    firewall-cmd --add-service ftp --permanent
    firewall-cmd --reload.


AutoFs
-------

#### Direct access ####

    yum install autofs -y

    vim /etc/auto.master ~>
      /- /etc/auto.direct

    mkdir -p /nfsshare
    vim /etc/auto.direct ~>
      /nfsshare 192.168.100.102:/nfsshare

    systemctl enable autofs
    systemctl start autofs

#### Indirect map ####

    yum install autofs -y

    vim /etc/auto.master ~>
      /nfs /etc/auto.indirect

    vim /etc/auto.indirect ~>
      /share 192.168.100.102:/nfsshare

    systemctl enable autofs
    systemctl start autofs

#### Wildcards in Automount ####

    yum install autofs -y

    vim /etc/auto.master ~>
      /nfs /etc/auto.users

    vim /etc/auto.users ~>
      * 192.168.100.102:/home/ldap/&

    systemctl enable autofs
    systemctl start autofs
