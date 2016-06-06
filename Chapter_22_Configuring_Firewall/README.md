Firewall cfg.
-------------

    firewall-config, or firewall-cmd
    yum provides firewall-config

    firewall-cmd --get-services
    firewall-cmd --list-all-zones

    man firewalld.service

    ls -la /usr/lib/firewalld/services
    ls -la /usr/lib/firewalld/services/

    firewall-cmd --add-service=http
    firewall-cmd --permanent --add-port=8080/tcp

    firewall-cmd --add-rich-rule 'rule family="ipv4" destination address="192.168.4.0/24" port port="100" protocol="udp" log accept'
    firewall-cmd --permanent --add-rich-rule 'rule protocol value="tcp" log'
    firewall-cms --permanent --add-rich-rule 'rule protocol value="udp" log'

