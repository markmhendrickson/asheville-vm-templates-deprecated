cd /home/asheville/.ssh
# Use the default vagrant public key
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
chmod 600 /home/asheville/.ssh/authorized_keys
chown -R asheville /home/asheville/.ssh
