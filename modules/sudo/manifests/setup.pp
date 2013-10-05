# == Class: sudo::setup
#
# This sets up sudo. This is implicitly loaded when you make a `sudo::sudoer`.
#
class sudo::setup {
  include sudo

  file { $sudo::conf_dir:
    ensure => directory,
    owner  => "root",
    group  => "root",
    mode   => "0755",
  }

  file { "/etc/sudoers":
    content => template("sudo/sudoers.erb"),
    owner   => "root",
    group   => "root",
    mode    => "0440",
    require => File[$sudo::conf_dir],
  }
}
