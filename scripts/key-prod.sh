cd /home/asheville/.ssh
# Use the default vagrant public key

# TODO
# Download the production asheville SSH public key from somewhere
echo "configure the ssh key"; exit 1
# wget --no-check-certificate 'https://url' -O authorized_keys

chmod 600 /home/asheville/.ssh/authorized_keys
chown -R asheville /home/asheville/.ssh
