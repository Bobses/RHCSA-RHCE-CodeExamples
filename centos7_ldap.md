Install IPA Server
------------------

    yum -y install ipa-server bind-dyndb-ldap ipa-server-dns

Setup IPA Server
------------------

    echo "192.168.122.200 ipa.example.com ipa" >> /etc/hosts
    hostnamectl set-hostname ipa.example.com
    ping ipa.example.com

    ipa-server-install --setup-dns --domain=example.com --realm=EXAMPLE.COM --hostname=ipa.example.com --admin-password=password --ds-password=password --reverse-zone=122.168.192.in-addr.arpa --forwarder=8.8.8.8

    Hostname:       ipa.example.com
    IP address(es): 192.168.122.200
    Domain name:    example.com
    Realm name:     EXAMPLE.COM

    BIND DNS server will be configured to serve IPA domain with:
    Forwarders:    8.8.8.8
    Reverse zone(s):  122.168.192.in-addr.arpa.

Add first user
--------------

    kinit admin
    klist
    ipa user-add

Firewall (on server)
---------------------

    for i in http https ldap ldaps kerberos kpasswd dns ntp; do firewall-cmd --permanent --add-service $i; done
    kinit admin
    klist

FTP (on server)
----------------

    yum install -y vsftpd
    systemctl enable vsftpd
    systemctl start vsftpd
    cp -v ~/cacert.p12 /var/ftp/pub

First user
-----------

    /etc/resolv.conf
        -> 127.0.0.1
    firewall-cmd --permanent --add-service ftp
    firewall-cmd --reload
    klist


LDAP (on client side )
----------------------

    yum install -y openldap-clients nss-pam-ldapd

    scp ipa.example.com:/etc/ipa/ca.crt /etc/openldap/cacerts/ca.crt

    authconfig --enableldap --enableldapauth --ldapserver="ipa.example.com" --ldapbasedn="dc=example,dc=com" --update

    systemctl restart nslcd

    /etc/nslcd.conf
      uri ldap://ipa.example.com/
      base dc=example,dc=com
      ssl start_tls
      tls_reqcert never
      tls_cacertdir /etc/openldap/cacerts
