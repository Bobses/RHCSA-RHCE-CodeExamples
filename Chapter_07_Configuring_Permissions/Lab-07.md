Lab 07-01
----------

    groupadd account
    groupadd sale
    useradd user-1
    useradd user-2
    usermod -G account user-1
    usermod -G sale user-2
    mkdir -p /data/account
    mkdir -p /data/sale
    chown :account /data/account
    chown :sale /data/sale


Lab 07-02
----------

    chmod ug+rwx /data/account
    chmod ug+rwx /data/sale

    chmod o-rwx /data/account
    chmod o-rwx /data/sale

    /etc/profile umask o-rwx

Lab 07-03
----------

    setfacl -R -m g:sale:r /data/account/
    setfacl -R -m g:account:r /data/sale/

Lab 07-04
----------

    chmod g+s /data/sale/
    chmod g+s /data/account/
    setfacl -m d:g:account:r /data/account/
    setfacl -m d:g:sale: /data/sale/

Lab 07-04
----------

    chmod +t /data/sale/
    chmod +t /data/account/
