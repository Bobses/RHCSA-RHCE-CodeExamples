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
         
    echo "ErrorLog syslog:local1" >  /etc/httpd/conf/httpd.conf
    systemctl restart httpd

    echo "*.debug /var/log/messages/messages-debug" > /etc/rsyslog.d/debug.conf
    systemctl restart rsyslog
    logger -p local0.debug "Daemon Debug Message"
    less /var/log/messages
      
      