# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include delta_dumper::install
class delta_dumper::install {
  package { $delta_dumper::packages:
    ensure => latest,
  }
  file { $delta_dumper::etc_dir:
    ensure => directory,
    owner  => $delta_dumper::user,
    group  => $delta_dumper::group,
    mode   => '0700',
  }
  # remove old install method
  file { "${delta_dumper::etc_dir}/delta-dumper":
    ensure => absent,
  }
}
