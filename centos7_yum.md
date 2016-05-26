Set up yum repo over httpd
-----------------------------

### On Server ###

    mount -o loop /dev/sr0 /mnt/cdrom
    cp -rv /mnt/cdrom/Packages /repo
    cp /mnt/cdroom/repodata/k2j34kj23k4j324k-c7-x86_64-comps.xml /repo/comps.xml
    createrepo -g /repo/comps.xml /repo/Packages

    vi /etc/yum.conf.d/Local.repo >>
      [my-repo-id]
      name=My Locla Repo Name
      baseurl=file:///repo/Packages
      enabled=1
      gpgcheck=0

    yum clean all
    yum --disablerepo=** --enablerepo=my-repo-id install vim httpd

    systemctl enable httpd && systemctl start httpd
    ln  -s /repo /var/www/html/repo

    curl -L localhost/repo


### On Client ###
    vi /etc/yum.conf.d/InternalYumrepo >>

      [my-repo-id]
      name=My Locla Repo Name
      baseurl=http:///192.168.122.34/repo/Packages
      enabled=1
      gpgcheck=0
