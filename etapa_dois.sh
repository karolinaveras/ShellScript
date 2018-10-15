!#/bin/bash

cp /etc/pbis/redhat/lwsmd.service /lib/systemd/system/
sed -i "s|PrivateTmp=true|PrivateTmp=false|" /lib/systemd/system/lwsmd.service

/etc/init.d/lwsmd stop

update-rc.d -n -f lwsmd remove

systemctl daemon-reload
systemctl start lwsmd.service
systemctl enable lwsmd.service

cd /etc/systemd/system
ln -s /lib/systemd/system/lwsmd.service

shutdown now -r
