SELinux
---------

    sestatus
    ls -Z
    ps -Zx
    yum install policycoreutils-python
    semanage fcontext -l
    man  -k _selinux
    yum provides */sepolicy
    yum install policycoreutils-devel
    mandb
    man -k _selinux
    man httpd_selinux


SElinux enable / disable
------------------------

    sestatus
    setenforce  0

SElinux booleans
-----------------

    setsebool -P httpd_can_connect_ftp 1
    getsebool -a | grep httpd


SElinux types
-------------

    semanage fcontext -a -t public_content_rw_t "/var/httpd/incoming(/.*)?"
    restorecon -F -R -v /var/httpd/incoming
    setsebool -P httpd_anon_write 1


Analyzing SELinux
-----------------

    yum -y install setroubleshoot-server
