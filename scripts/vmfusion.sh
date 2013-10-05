mkdir -p /mnt/cdrom
mount -o loop /home/asheville/linux.iso /mnt/cdrom
tar zxvf /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
rm /home/asheville/linux.iso
umount /mnt/cdrom
