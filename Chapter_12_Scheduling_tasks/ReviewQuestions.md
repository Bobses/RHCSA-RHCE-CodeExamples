1. `nano /etc/cron.weekly/run_me`
2. `0 14 1,15 * *`
3. `0/2 * * * *`
4. `0 0 19 9 *`, `0 0 * 9 tue` - > `0 0 19 9 4`
5. `sun` , `0` , `0,0`
6. `crontab -u lisa -e`
7. `echo "boris" > /etc/cron.deny`
8. `touch /etc/cron.daily/run_me` -> `/etc/anacrontab`
9. `systemctl status crond` -> `systemctl status atd`
10. `crontab -l` -> `atq`
