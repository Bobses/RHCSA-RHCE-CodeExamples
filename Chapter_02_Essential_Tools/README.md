
Help
-------

    man info
    man -k info
    catman
    man -Kw info

    ■ 1: Executable programs or shell commands
    ■ 5: File formats and conventions
    ■ 8: System administration commands

    info info
    mandb

vim
-----


ssh (pub/priv key )
--------------------

    su - user-2
    ssh-keygen.
      -> passphrase
    ssh-agent
    ssh-add ~/.ssh/id_rsa
      if "Could not open a connection to your authentication agent." -> eval $(ssh-agent -s)
    ssh-copy-id  root@192.168.122.XX
