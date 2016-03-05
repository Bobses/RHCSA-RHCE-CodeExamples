
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
    createrepo /repo

    nano >>
      [my-repo-id]
      name=My Repo Name
      baseurl=file:///repo


Search Packages:
----------------

    yum whatprovides */semanage
    yum provides */semanage
    yum search


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
