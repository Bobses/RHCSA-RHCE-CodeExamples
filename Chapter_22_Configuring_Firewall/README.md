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
