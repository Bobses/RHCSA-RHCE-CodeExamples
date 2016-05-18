1. setenforce 0
2. getsebool -a
3.  

        yumdownloader selinux-policy-devel
        rpm -q -p -d selinux-policy-devel-3.13.1-60.el7_2.3.noarch.rpm
        yum install selinux-policy-devel
        mandb
        man -k _selinux | grep httpd

4. yum -y install setroubleshoot-server
5.

        semanage fcontext -a -t public_content_rw_t "/web(/.*)?"
        restorecon -F -R -v /web

6. ? -> Never
7. vi /etc/sysconf/selinux
8. less /var/log/audit/audit.log
9. man -k _selinux | grep ftp
10.

        setenforce 0
        less /var/log/audit/audit.log
