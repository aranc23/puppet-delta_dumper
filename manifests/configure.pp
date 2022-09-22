# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include delta_dumper::configure
class delta_dumper::configure {
  # Optional[String] $compress = undef,
  # Optional[String] $uncompress = undef,
  # Optional[String] $extension = undef,
  # Optional[Stdlib::Absolutepath] $backup_location = undef,
  # Optional[Stdlib::Absolutepath] $tmpdir = undef,
  # Optional[Stdlib::Absolutepath] $log_location = undef,
  # Optional[Stdlib::Absolutepath] $mysql_bindir = undef,
  # Optional[Stdlib::Absolutepath] $postgresql_bindir = undef,
  # Optional[Array['String']] $postgresql_dump_database = undef,
  # Optional[Array['String']] $postgresql_extra_option = undef,
  # Optional[String] $postgresql_username = undef,
  # Optional[String] $postgresql_host = undef,
  # Optional[Boolean] $mysql = undef,
  # Optional[Boolean] $postgresql = undef,
  # Optional[Boolean] $localcow = undef,
  # Optional[Boolean] $sys_logging = undef,
  # Optional[Boolean] $terminal_logging = undef,
  # Optional[Boolean] $file_logging = undef,
  # Optional[Stdlib::Absolutepath] $mysql_defaults_file = undef,
  # Optional[Boolean] $mysql_single_transaction = undef,
  # Optional[Array['String']] $mysql_ignore_table = undef,
  # Optional[String] $mysql_user = undef,
  # Optional[String] $mysql_password = undef,
  # Optional[String] $mysql_hostname = undef,
  # Optional[Array['String']] $mysql_extra_option = undef,
  # Optional[Integer] $daily = undef,
  # Optional[Integer] $weekly = undef,
  # Optional[Integer] $monthly = undef,
  # Optional[Enum['Sun','Mon','Tue','Wed','Thu','Fri','Sat']] $week_start = undef,
  # Optional[Integer] $month_start = undef,
  # Optional[Stdlib::Absolutepath] $rsync_binary = undef,
  # Optional[Array['String']] $rsync_options = undef,
  # Optional[String] $prerun = undef,
  # Optional[String] $postrun = undef,

  $_vars = [
    'log_level',
    'facility',
    'mysql_skip_database',
    'postgresql_skip_database',
    'compression',
    'compress',
    'uncompress',
    'extension',
    'backup_location',
    'tmpdir',
    'log_location',
    'mysql_bindir',
    'postgresql_bindir',
    'postgresql_dump_database',
    'postgresql_extra_option',
    'postgresql_username',
    'postgresql_host',
    'mysql',
    'postgresql',
    'localcow',
    'sys_logging',
    'terminal_logging',
    'file_logging',
    'mysql_defaults_file',
    'mysql_single_transaction',
    'mysql_ignore_table',
    'mysql_user',
    'mysql_password',
    'mysql_hostname',
    'mysql_extra_option',
    'daily',
    'weekly',
    'monthly',
    'week_start',
    'month_start',
    'rsync_binary',
    'rsync_options',
    'prerun',
    'postrun',
    'mongodb_bindir',
    'mongodb_username',
    'mongodb_password',
    'mongodb_port',
    'mongodb_hostname',
    'mongodb_ssl',
  ]
  file { "${delta_dumper::etc_dir}/config":
    owner   => $delta_dumper::user,
    group   => $delta_dumper::group,
    mode    => '0500',
    content => template('delta_dumper/config.erb'),
  }
}
