Install NFS server
------------------

    yum install nfs-utils
    mkdir /nfsshare

    setsebool nfs_export_all_ro
    setsebool nfs_export_all_rw

    firewall-cmd --permanent --add-service nfs
    firewall-cmd --reload

    systemctl enable rpcbind
    systemctl enable nfs-server
    systemctl enable nfs-lock
    systemctl enable nfs-idmap

    systemctl start rpcbind  
    systemctl start nfs-server
    systemctl start nfs-lock
    systemctl start nfs-idmap

    vim /etc/exports ->
      /home       *(rw,sync,no_root_squash,no_all_squash)
      /nfsshare   *(sync)

    systemcli restart nfs-server
    systemcli stop firewalld


Configure NFS client
--------------------

    yum install nfs-utils
    mount -t nfs 192.168.122.200:/home /mnf/nfs/home  
