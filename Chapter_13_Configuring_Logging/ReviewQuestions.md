1. `/etc/rsyslog.conf` and `/etc/rsyslog.d/*.*`
2. `/var/log/secure` or `journalctl SYSLOG_FACILITY=10`
3. 4x weeks --> 5x weeeks
4. `logger --priority local3.info` --> `-p user.notice`
5. `*.info  /var/log/messages.info` --> `*.=info`
6. `/etc/systemd/journald.conf`
7. `journalctl -f`
8. `journalctl --since="09:00:00" --until="15:00:00" _PID=1`
9. `journalctl  -b -1`
10. `/etc/systemd/journald.conf --> Storage=persistent `
