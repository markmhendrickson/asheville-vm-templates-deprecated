useradd -d /home/asheville -m asheville -s /bin/bash -pasheville
usermod -a -G sudo asheville

date > /etc/box_build_time

# Setup sudo to allow no-password sudo for "sudo"
usermod -a -G sudo asheville

# Prep for SSH key installation
mkdir /home/asheville/.ssh
chmod 700 /home/asheville/.ssh
