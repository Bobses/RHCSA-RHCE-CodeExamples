
    groupadd --gid 5000 lnxgrp
    useradd --base-dir /usr --uid 4000 --gid 5000 --expiredate 2016-12-20 user4000
    passwd --minimum 4 --maximum 30 --warning 7 user4000
    passwd user4000
    chage -l user4000

    grpmod --gid 6000 lnxgrp
    useradd user2new
    useradd user3
    gpasswd --administrators user3 --members user4000,usernew lnxgrp
    gpasswd lnxgrp

    root# useradd user4
    root# su - user4
    user4$ newgrp - lnxgrp
