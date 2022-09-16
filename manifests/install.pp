# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include delta_dumper::install
class delta_dumper::install {
  file { $delta_dumper::etc_dir:
    ensure => directory,
    owner  => $delta_dumper::user,
    group  => $delta_dumper::group,
    mode   => '0700',
  }
  file { "${delta_dumper::etc_dir}/delta-dumper":
    owner  => $delta_dumper::user,
    group  => $delta_dumper::group,
    mode   => '0700',
    source => 'puppet:///modules/delta_dumper/delta-dumper',
  }
}
