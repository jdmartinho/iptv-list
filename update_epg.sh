#!/bin/bash
# Run this weekly with cron '0 10 * * 6' (Every Saturday at 10:00)
~/.wg++/run.sh
# Upload guide.xml file to remote server with scp
scp ~/.wg++/guide.xml jdmartin@jdmartinho.com:<destination path>
# Upload guide.xml file to remote server with ftp
HOST='ftp.jdmartinho.com'
USER='yourid'
PASSWD='yourpw'
FILE='~/.wg++/guide.xml'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
put $FILE
quit
END_SCRIPT
exit 0