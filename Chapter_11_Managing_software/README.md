
Search help
-----------

    man yum
    man yum.conf

Mount cdrom :
--------------

    lsblk
    mkdir -p /mnt/cdrom
    mount -r -t auto /dev/sr0 /mnt/cdrom

Create Local repo :
-------------------

    yum install createrepo
    cp /mnt/cdroom/repodata/k2j34kj23k4j324k-c7-x86_64-comps.xml /repo/comps.xml
    createrepo -g /repo/comps.xml /repo/Packages
    yum clean all

    nano >>
      [my-repo-id]
      name=My Repo Name
      baseurl=file:///repo/Packages
      enabled=1
      gpgcheck=0



Search Packages:
----------------

    yum whatprovides */semanage
    yum provides */semanage
    yum --disablerepo=** --enablerepo=local-repo search

Work with yum :
---------------

    yum list installed
    yum groups list hidden
    yum groups info “Basic Web Server"

Work with history :
--------------------

    yum history
    yum history info 4
    yum history undo 4

Work with rpm :
---------------

    rpm -qa  —all packages
    rpm -ql htop
    rpm --query --state htop
    rpm -q -f /usr/bin/passwd -d  -vv
