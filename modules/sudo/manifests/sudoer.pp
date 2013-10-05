# == Define: sudo::sudoer
#
# This creates a new rule for a sudoer.
#
define sudo::sudoer($content) {
  include sudo::setup

  $real_content = $content ? {
    ""      => "",
    default => "# Managed by Puppet\n${content}\n",
  }

  file { "${sudo::conf_dir}/${title}":
    content => $real_content,
    owner   => "root",
    group   => "root",
    mode    => "0440",
    require =>  File[$sudo::conf_dir],
  }
}
