

Install IPA Server
------------------

    yum -y install ipa-server bind-dyndb-ldap ipa-server-dns

Setup IPA Server
------------------

    echo "192.168.100.100   ipa.example.com ipa" >> /etc/hosts
     ? hostnamectl set-hostname ipa.example.com
    ping ipa.example.com

    ipa-server-install --setup-dns --domain=example.com --realm=EXAMPLE.COM --hostname=ipa.example.com --no-forwarders --admin-password=password --ds-password=password --reverse-zone=100.168.192.in-addr.arpa

    The IPA Master Server will be configured with:
    Hostname:       ipa.example.com
    IP address(es): 10.0.2.15, 192.168.100.100
    Domain name:    example.com
    Realm name:     EXAMPLE.COM

    BIND DNS server will be configured to serve IPA domain with:
    Forwarders:    No forwarders
    Reverse zone(s):  2.0.10.in-addr.arpa., 100.168.192.in-addr.arpa.


Firewall
---------

    for i in http https ldap ldaps kerberos kpasswd dns ntp; do firewall-cmd --permanent --add-service $i; done
    kinit admin
    klist

FTP
-----

    yum install -y vsftpd
    systemctl enable vsftpd
    systemctl start vsftpd
    cp -v ~/cacert.p12 /var/ftp/pub

    firewall-cmd --permanent --add-service ftp
    firewall-cmd --reload
    klist
