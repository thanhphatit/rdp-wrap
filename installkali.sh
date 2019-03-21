#FileShare:
[FileShare] >> /etc/samba/smb.conf
   comment = Windows 10 to Ubuntu
   path = /media/DATA/FileShare
   browseable = yes
   writable = yes
   printable = no
   valid users = thanhphatit 
   #force group = users
   available = yes
   public = yes
   writable = yes
#--------------------#
sudo dpkg -i mattermostdesktop.deb
sudo dpkg -i skypeforlinux64.deb
