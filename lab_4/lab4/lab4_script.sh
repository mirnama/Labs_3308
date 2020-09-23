#!/bin/bash
# Authors :Mirna Masri
# Date: 09/21/2020
sudo cp /var/log/syslog syslog
egrep --color=always -i "(error)" syslog | tee error_log_check.txt

echo "testing message" | mutt -s "message subject" -a error_log_check.txt -- mima4642@colorado.edu


