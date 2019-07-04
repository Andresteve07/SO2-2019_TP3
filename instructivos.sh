sudo apt-get install apache2
sudo ufw app list
sudo ufw allow 'Apache Full'
sudo ufw status
sudo systemctl status apache2
hostname -I
sudo ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/
sudo systemctl restart apache2.service
sudo nano /usr/lib/cgi-bin/form_exam.pl
sudo chmod 755 /usr/lib/cgi-bin/form_exam.pl
sudo nano /var/www/html/index.html

----- Sys Info --

 2047  cpan App:cpanminus
 2048  cpan Linux:SysInfo
 2049  perl sysinfo.pl

-------FILE UPLOAD-------------
mkdir /home/andresteve07/so2_tp3_modules
sudo chmod -R 777 /home/andresteve07/so2_tp3_modules
#/home/andresteve07/so2_tp3_modules

User: so2_goes 
Access Key ID: AKIAZSDU6HF7YOLETTXQ
Secret access key: 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