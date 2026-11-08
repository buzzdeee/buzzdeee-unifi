# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include unifi

class unifi (
  $package_name = 'unifi%main'
  $package_ensure = 'installed',
  $service_name = 'unifi'
  $service_ensure = 'running',
  $service_enable = true,
  $service_flags  = undef,
  $interfaces     = {},
){

  package { $package_name:
    ensure => $package_ensure,
  }

  service { $service_name:
    ensure => $service_ensure,
    enable => $service_enable,
    flags  => $service_flags,
  }

  Package[$package_name] ~>
    Service[$service_name]

}

