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
  * Scripts in /etc/cron.hourly, cron.daily, cron.weekly, and cron.monthly
  * User-specific files that are created with crontab -e

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

Run user crone 
---------------

    crontab -e 
    cat /var/spool/cron/root >>
      * * * * * echo `date` >> /tmp/crone











