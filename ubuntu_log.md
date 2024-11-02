# Syslog pileup

- all system logs are present in syslog.
- Normal pileups because of flatpak apps, nix apps permission issues


### Manula cleanup
vishnukvs@vishnukvs-pc:/etc/logrotate.d$ sudo sh -c 'cat /dev/null > /var/log/syslog'
vishnukvs@vishnukvs-pc:/etc/logrotate.d$ sudo sh -c 'cat /dev/null > /var/log/syslog.1'


Configure logrotate
```
sudo chmod 755 /var
sudo chmod 755 /var/log

sudo nano /etc/logrotate.d/syslog

/var/log/syslog
{
    su root adm
    weekly                 # Rotate the log file weekly
    rotate 4               # Keep 4 weeks of backlogs
    compress               # Compress the rotated log files
    delaycompress          # Delay compression of the most recent log file
    missingok              # Do not issue an error if the log file is missing
    notifempty             # Do not rotate if the log file is empty
    create 0640 root adm   # Create a new log file with specified permissions
    postrotate
        /usr/lib/rsyslog/rsyslog-rotate  # Command to run after rotation
    endscript
}

----

sudo logrotate -d /etc/logrotate.d/syslog  #debug
sudo logrotate -f /etc/logrotate.d/syslog  # force
```