#!/bin/bash
# Run this weekly with cron '0 10 * * 6' (Every Saturday at 10:00)
cp ./WebGrab++.config.xml ~/Downloads/wg++/WebGrab++.config.xml
~/Downloads/wg++/run.sh
cp ~/Downloads/wg++/guide.xml ~/Downloads/WG2MP/myguidebefore.xml
# Run the timeshift script to get the proper timezone changes
/usr/bin/mono ~/Downloads/WG2MP/WG2MP.exe ~/Downloads/WG2MP/myguidebefore.xml ~/Downloads/WG2MP/guide.xml
# Upload guide.xml file to remote server with ftp
HOST='myhost.com'
USER='myuser'
PASSWD='mypassword'
FILE='~/Downloads/WG2MP/guide.xml guide.xml'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd www
binary
put $FILE
quit
END_SCRIPT
exit 0
