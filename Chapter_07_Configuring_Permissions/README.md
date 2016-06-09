Advanced Permissions
---------------------

    SUID        4   u+s -  as the owner of the file being executed
    GUID        2   g+s -  same group rights of the file being executed
    Sticky bit  1   +t


Work with users/groups/passwords
--------------------------------

    useradd
    groupadd
    usermod


Permissions
-------------

    umask -S
    chmod
    chown

ACL
----

    setfacl
    getfacl
    mount -o remount,acl /mountpoint (file sys. != xfs )

    # useradd user-1
    # useradd user-2

    #su user-1
    user-1$ cd && mkdir dir
    user-1$ chmod o+rx /home/user-1 && chmod o+rx /home/user-1/dir
    user-1$ setfacl -m d:user-1:rw /home/user-1/dir
    user-1$ setfacl -m user-1:rw /home/user-1/dir
    user-1$ cd /home/user-1/dir && mkdir proj && touch file
    user-1$ exit && su user-2

    user-2$ cd /home/user-1/dir
    user-2$ getfacl -c proj && getfacl -c file

Find
----------

    find / -type f -atime +10 -size -5M -uid 0

Bash
----------

    add -> .bash_profile
    PS1='[\t \u @ \h \W]\$ '
    export PS1
