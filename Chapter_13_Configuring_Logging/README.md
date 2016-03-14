System Logging
---------------

* Direct write
* rsyslogd (rsyslogd is the enhancement of syslogd)
* journald

Simple logging
-------------

    logger Hi!
    tail -f /var/log/messages


Rsyslog
--------

Facility: `[ daemon, lpr, mark, news, syslog, user, uucp, local0-7 ]`

Priority: `[ debug, info, notice, warning / warn, err /error, crit, alert, emerg / panic ]`

man `[ rsyslog.conf, logger, syslog ]`

    yum install -y httpd

    echo "ErrorLog syslog.local1" >  /etc/httpd/conf/httpd.conf
    systemctl restart httpd

    echo "*.debug /var/log/messages-debug.log" > /etc/rsyslog.d/debug.conf
    systemctl restart rsyslog
    logger -p local0.debug "Daemon Debug Message"
    less /var/log/messages-debug.log

Work with journalctl
--------------------

    journalctl --follow
    journalctl --unit crond --output=verbose
    journalctl -p info
    journalctl --disk-usage
    journalctl --since yesterday -p err
    journalctl --since="2016-03-14 09:30:22" --until="2016-03-14 09:30:23" --output verbose
    journalctl --follow SYSLOG_IDENTIFIER=root

Systemd Journal rotation
-------------------------

    nano /etc/systemd/journald.conf
    mkdir -p /var/log/journal.
    chown root:systemd-journal /var/log/journal
    chmod 2755 /var/log/journal
    reboot or killall -USR1 systemd-journald
