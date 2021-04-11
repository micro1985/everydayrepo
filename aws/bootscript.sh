#!/bin/bash
echo *--------------START--------------*
yum -y update
yum -y install httpd
echo "<htlm><body bgcolor=black><center><h2><p><font color=red>Hello 4uvaki!!!</h2></center></body></html>" > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
cat netumenia.txt
echo "UserData executed on $(date)" >> /var/www/html/log.txt
echo *--------------FINISH--------------*


#!/bin/bash
echo *--------------START--------------*
yum -y update
yum -y install httpd
aws s3 sync s3://xenn.website /var/www/html
sudo systemctl start httpd
sudo systemctl enable httpd
echo *--------------FINISH--------------*