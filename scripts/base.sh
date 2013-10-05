# Apt-install various things necessary for Ruby, guest additions,
# etc., and remove optional things to trim down the machine.

# Instance "readiness"
echo "Sleeping for 30 seconds..."
sleep 30

apt-get -y update
apt-get -y upgrade
apt-get -y install gcc build-essential linux-headers-$(uname -r)
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y install vim curl
apt-get clean

# Set up sudo
( cat <<'EOP'
%asheville ALL=NOPASSWD:ALL
EOP
) > /tmp/asheville
chmod 0440 /tmp/asheville
mv /tmp/asheville /etc/sudoers.d/

# Install NFS client
apt-get -y install nfs-common
