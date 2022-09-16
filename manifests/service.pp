# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include delta_dumper::service
class delta_dumper::service {
  file { '/etc/cron.d/delta-dumper':
    owner   => root,
    group   => 0,
    mode    => '0644',
    content => "MAILTO=${delta_dumper::user}\n${delta_dumper::cron_minute} ${delta_dumper::cron_hour} ${delta_dumper::cron_monthday} ${delta_dumper::cron_month} ${delta_dumper::cron_weekday} ${delta_dumper::user} ${delta_dumper::etc_dir}/delta-dumper\n",
  }
}
