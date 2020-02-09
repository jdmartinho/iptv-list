xcopy /y /f C:\Users\user\Repositories\iptv-list\WebGrab++.config.xml C:\Users\user\AppData\Local\WebGrab+Plus\WebGrab++.config.xml
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"

REM Generate the script. Will overwrite any existing temp.txt
echo open ftp.host.com> temp.txt
echo username>> temp.txt
echo password>> temp.txt
echo cd www
echo send C:\Users\user\AppData\Local\WebGrab+Plus\guide.xml>> temp.txt
echo quit>> temp.txt

REM Launch FTP and pass it the script
ftp -s:temp.txt

REM Clean up.
del temp.txt