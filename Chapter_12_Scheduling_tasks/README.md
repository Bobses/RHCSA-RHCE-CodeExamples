Cron service 
-------------

    systemctl status crond -l
    less /var/log/cron
    rpm -ql cronie
    rpm -ql cronie-anacron
    rpm -ql crontabs
    
Cron config 
------------
  * Cron files in /etc/cron.d
  * Scripts in /etc/cron.{hourly|daily|weekly|monthly} 
  * User-specific files that are created with crontab -e

AnaCron service
---------------

    cat /etc/anacrontab

Job definition pattern 
----------------------

    Example of job definition:
    .---------------- minute (0 - 59)
    |  .------------- hour (0 - 23)
    |  |  .---------- day of month (1 - 31)
    |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
    |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
    |  |  |  |  |
    *  *  *  *  * user-name  command to be executed

    01 01 * * 0/2
Run user crone 
---------------

    crontab -e 
    cat /var/spool/cron/root >>
      * * * * * echo `date` >> /tmp/crone
    crontab -l

Cron security
-------------

  Add user to : `/etc/cron.allow` or `/etc/cron.deny`

At service on RHEL
------------------

    at 14:00
    at teatime
    at noon
      >> command + Ctr+D
    atq 








