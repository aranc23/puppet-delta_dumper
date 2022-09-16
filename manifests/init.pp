# @summary install and configure delta-dumper, for duming mysql and postgres database
#
# Configures delta-dumper to dump databases. Most parameters are
# exactly those from delta-dumper itself.  See the perl POD for
# delta-dumper for details.
#
# A description of what this class does
# @param etc_dir
#   create this directory and put a config file in it named config
# @param user
#   use this user to own the config file, and when creating cron or cron.d entries
# @param group
#   used to set group ownership of config file
# @param cron_minute
#   used to created cron.d entry
# @param cron_hour
#   used to created cron.d entry
# @param cron_day
#   used to created cron.d entry
# @param cron_weekday
#   used to created cron.d entry
# @param cron_monthday
#   used to created cron.d entry
#
# @example
#   include delta_dumper
class delta_dumper
(
  Stdlib::Absolutepath $etc_dir = '/etc/delta-dumper',
  String $user = root,
  Variant[String,Integer] $group = 0,
  String $cron_minute = '15',
  String $cron_hour = '1',
  String $cron_monthday = '*',
  String $cron_month = '*',
  String $cron_weekday = '*',

  # these params are exactly the same as the config variables from
  # delta-dumper:
  Optional[Enum['debug','info','notice','warning','error','critical','alert','emergency']] $log_level = undef,
  Optional[Enum['auth',
                'authpriv',
                'cron',
                'daemon',
                'kern',
                'local0',
                'local1',
                'local2',
                'local3',
                'local4',
                'local5',
                'local6',
                'local7',
                'mail',
                'news',
                'syslog',
                'user',
                'uucp']] $facility = undef,
  Optional[Array[String]] $mysql_skip_database = undef,
  Optional[Array[String]] $postgresql_skip_database = undef,
  Optional[Enum['gzip','bzip2','xz','zstd','custom','none']] $compression = undef,
  Optional[String] $compress = undef,
  Optional[String] $uncompress = undef,
  Optional[String] $extension = undef,
  Optional[Stdlib::Absolutepath] $backup_location = undef,
  Optional[Stdlib::Absolutepath] $tmpdir = undef,
  Optional[Stdlib::Absolutepath] $log_location = undef,
  Optional[Stdlib::Absolutepath] $mysql_bindir = undef,
  Optional[Stdlib::Absolutepath] $postgresql_bindir = undef,
  Optional[Array[String]] $postgresql_dump_database = undef,
  Optional[Array[String]] $postgresql_extra_option = undef,
  Optional[String] $postgresql_username = undef,
  Optional[String] $postgresql_host = undef,
  Optional[Boolean] $mysql = undef,
  Optional[Boolean] $postgresql = undef,
  Optional[Boolean] $localcow = undef,
  Optional[Boolean] $sys_logging = undef,
  Optional[Boolean] $terminal_logging = undef,
  Optional[Boolean] $file_logging = undef,
  Optional[Stdlib::Absolutepath] $mysql_defaults_file = undef,
  Optional[Boolean] $mysql_single_transaction = undef,
  Optional[Array[String]] $mysql_ignore_table = undef,
  Optional[String] $mysql_user = undef,
  Optional[String] $mysql_password = undef,
  Optional[String] $mysql_hostname = undef,
  Optional[Array[String]] $mysql_extra_option = undef,
  Optional[Integer] $daily = undef,
  Optional[Integer] $weekly = undef,
  Optional[Integer] $monthly = undef,
  Optional[Enum['Sun','Mon','Tue','Wed','Thu','Fri','Sat']] $week_start = undef,
  Optional[Integer] $month_start = undef,
  Optional[Stdlib::Absolutepath] $rsync_binary = undef,
  Optional[Array[String]] $rsync_options = undef,
  Optional[String] $prerun = undef,
  Optional[String] $postrun = undef,
  # list of vars for use in template:
)
{
  contain delta_dumper::install
  contain delta_dumper::configure
  contain delta_dumper::service

  Class['::delta_dumper::install']
  -> Class['::delta_dumper::configure']
  ~> Class['::delta_dumper::service']
}
