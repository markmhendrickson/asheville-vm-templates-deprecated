# == Class: ntp
#
# Installs and configures ntp.
#
class ntp($servers = undef) {
  if $servers == undef {
    fail("Must specify a set of servers.")
  }

  package {
    "ntpdate":
      ensure => installed;
    "ntp":
      ensure => installed,
  }

  service { "ntp":
    ensure => running,
    enable => true,
  }

  file { "/etc/ntp.conf":
    content => template("ntp/ntp.conf.erb"),
    owner   => "root",
    group   => "root",
    mode    => "0644",
    notify  => Service["ntp"],
  }
}
