# == Class: api
#
# Handle configuration done outside of 3rd party modules.
#
class api {
  class { 'apt':
    always_apt_update => true
  }

  #------------------------------------------------------------------
  # Postgres
  #------------------------------------------------------------------
  # Postgres with sane development defaults
  class { 'postgresql::server':  }

  postgresql::database_user{'development':
    password_hash => 'development',
    superuser => true,
  }

  #------------------------------------------------------------------
  # Python
  #------------------------------------------------------------------
  # Python and python dev tools
  class { 'python':
      version    => '2.7',
      dev        => true,
      pip        => true,
      virtualenv => true,
  }

  #------------------------------------------------------------------
  # Extra Python Requirements
  #------------------------------------------------------------------
  package { "libevent-dev":
    ensure => installed,
  }

  # Typically required for "psycopg2"
  package { "postgresql-server-dev-all":
    ensure => installed,
  }


  #------------------------------------------------------------------
  # Sysadmin Packages
  #------------------------------------------------------------------
  package { "htop":
    ensure => installed,
  }

  package { "sysstat":
    ensure => installed,
  }

  package { "vim":
    ensure => installed,
  }

}
