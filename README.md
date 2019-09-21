**Set Up SSH access**
- username osmc/password osmc
- ssh osmc@192.168.0.248

**Set up FTP access**
- SFTP should be the same as SSH

**Install Mono**
- sudo apt-get install mono-runtime (if it doesn't work follow instructions on the link below)
- http://webgrabplus.com/documentation/installation/raspberry-pi

1. Copy wg++ folder contents using SFTP
2. Configure PVR Client to use local guide.xml file from wg++ folder
3. Install cron using MyOSMC->App Store menu (needs to be default OSMC skin)
4. Copy repository of script using SFTP
5. Configure crontab to run every day at 5AM
>crontab -e
>0 5 * * * /home/osmc/ip-tv/update_epg.sh
6. Add environment to the script
>PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/osmc/iptv-list
