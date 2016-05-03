
User management
---------------

    id root
    useradd
    usermod
    userdel
    passwd or chage
    cat /etc/passwd
    cat /etc/shadow

    cat /etc/login.defs (/etc/skell)
    cat /etc/default/useradd

    echo "user_id=`id -u`" >> /etc/skel/.bashrc
    useradd user-1
    su - user-1
    echo $user_id

User Environment
----------------

    /etc/profile
    /etc/bashrc
    ~/.profile
    ~/.bashrc

Group management
---------------

    groupadd
    groupmod
    /etc/group


Elevated permissions
---------------------

    su
    su -
    sudo
    PolicyKit
