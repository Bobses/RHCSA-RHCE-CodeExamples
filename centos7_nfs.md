Install NFS server
------------------

    yum install nfs-utils
    systemcli enable nfs-server
    systemcli enable nfs-lock
    systemcli enable nfs-idmap

    systemcli start nfs-server
    systemcli start nfs-lock
    systemcli start nfs-idmap

    vim /etc/exports ->
      /home    *(rw,sync,no_root_squash,no_all_squash)

    systemcli restart nfs-server
    systemcli stop firewalld


Configure NFS client
--------------------

    yum install nfs-utils
    mount -t nfs 192.168.122.200:/home /mnf/nfs/home  
