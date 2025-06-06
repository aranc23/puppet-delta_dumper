# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`delta_dumper`](#delta_dumper): install and configure delta-dumper, for duming mysql and postgres database
* [`delta_dumper::configure`](#delta_dumper--configure): A short summary of the purpose of this class
* [`delta_dumper::install`](#delta_dumper--install): A short summary of the purpose of this class
* [`delta_dumper::service`](#delta_dumper--service): A short summary of the purpose of this class

## Classes

### <a name="delta_dumper"></a>`delta_dumper`

Configures delta-dumper to dump databases. Most parameters are
exactly those from delta-dumper itself.  See the perl POD for
delta-dumper for details.

#### Examples

##### 

```puppet
include delta_dumper
```

#### Parameters

The following parameters are available in the `delta_dumper` class:

* [`packages`](#-delta_dumper--packages)
* [`etc_dir`](#-delta_dumper--etc_dir)
* [`user`](#-delta_dumper--user)
* [`group`](#-delta_dumper--group)
* [`cron_minute`](#-delta_dumper--cron_minute)
* [`cron_hour`](#-delta_dumper--cron_hour)
* [`cron_day`](#-delta_dumper--cron_day)
* [`cron_weekday`](#-delta_dumper--cron_weekday)
* [`cron_monthday`](#-delta_dumper--cron_monthday)
* [`cron_month`](#-delta_dumper--cron_month)
* [`log_level`](#-delta_dumper--log_level)
* [`facility`](#-delta_dumper--facility)
* [`checksum`](#-delta_dumper--checksum)
* [`checksum_binary`](#-delta_dumper--checksum_binary)
* [`mbuffer`](#-delta_dumper--mbuffer)
* [`mbuffer_binary`](#-delta_dumper--mbuffer_binary)
* [`mbuffer_opts`](#-delta_dumper--mbuffer_opts)
* [`rate_limit`](#-delta_dumper--rate_limit)
* [`mysql_skip_database`](#-delta_dumper--mysql_skip_database)
* [`postgresql_skip_database`](#-delta_dumper--postgresql_skip_database)
* [`compression`](#-delta_dumper--compression)
* [`secondary_compression`](#-delta_dumper--secondary_compression)
* [`compressor_compress`](#-delta_dumper--compressor_compress)
* [`compressor_uncompress`](#-delta_dumper--compressor_uncompress)
* [`compressor_suffix`](#-delta_dumper--compressor_suffix)
* [`backup_location`](#-delta_dumper--backup_location)
* [`old_backup_location`](#-delta_dumper--old_backup_location)
* [`tmpdir`](#-delta_dumper--tmpdir)
* [`mysql_bindir`](#-delta_dumper--mysql_bindir)
* [`postgresql_bindir`](#-delta_dumper--postgresql_bindir)
* [`postgresql_extra_option`](#-delta_dumper--postgresql_extra_option)
* [`postgresql_username`](#-delta_dumper--postgresql_username)
* [`postgresql_host`](#-delta_dumper--postgresql_host)
* [`mysql`](#-delta_dumper--mysql)
* [`postgresql`](#-delta_dumper--postgresql)
* [`sys_logging`](#-delta_dumper--sys_logging)
* [`terminal_logging`](#-delta_dumper--terminal_logging)
* [`file_logging`](#-delta_dumper--file_logging)
* [`mysql_defaults_file`](#-delta_dumper--mysql_defaults_file)
* [`mysql_single_transaction`](#-delta_dumper--mysql_single_transaction)
* [`mysql_ignore_table`](#-delta_dumper--mysql_ignore_table)
* [`mysql_user`](#-delta_dumper--mysql_user)
* [`mysql_password`](#-delta_dumper--mysql_password)
* [`mysql_hostname`](#-delta_dumper--mysql_hostname)
* [`mysql_extra_option`](#-delta_dumper--mysql_extra_option)
* [`mysql_verify`](#-delta_dumper--mysql_verify)
* [`daily`](#-delta_dumper--daily)
* [`weekly`](#-delta_dumper--weekly)
* [`monthly`](#-delta_dumper--monthly)
* [`week_start`](#-delta_dumper--week_start)
* [`month_start`](#-delta_dumper--month_start)
* [`maxage`](#-delta_dumper--maxage)
* [`rsync_binary`](#-delta_dumper--rsync_binary)
* [`rsync_options`](#-delta_dumper--rsync_options)
* [`prerun`](#-delta_dumper--prerun)
* [`postrun`](#-delta_dumper--postrun)
* [`mongodb`](#-delta_dumper--mongodb)
* [`mongodb_bindir`](#-delta_dumper--mongodb_bindir)
* [`mongodb_username`](#-delta_dumper--mongodb_username)
* [`mongodb_password`](#-delta_dumper--mongodb_password)
* [`mongodb_port`](#-delta_dumper--mongodb_port)
* [`mongodb_hostname`](#-delta_dumper--mongodb_hostname)
* [`mongodb_ssl`](#-delta_dumper--mongodb_ssl)

##### <a name="-delta_dumper--packages"></a>`packages`

Data type: `Array[String]`

list of packages to install

Default value: `['delta-dumper']`

##### <a name="-delta_dumper--etc_dir"></a>`etc_dir`

Data type: `Stdlib::Absolutepath`

create this directory and put a config file in it named config

Default value: `'/etc/delta-dumper'`

##### <a name="-delta_dumper--user"></a>`user`

Data type: `String`

use this user to own the config file, and when creating cron or cron.d entries

Default value: `root`

##### <a name="-delta_dumper--group"></a>`group`

Data type: `Variant[String,Integer]`

used to set group ownership of config file

Default value: `0`

##### <a name="-delta_dumper--cron_minute"></a>`cron_minute`

Data type: `String`

used to created cron.d entry

Default value: `'15'`

##### <a name="-delta_dumper--cron_hour"></a>`cron_hour`

Data type: `String`

used to created cron.d entry

Default value: `'1'`

##### <a name="-delta_dumper--cron_day"></a>`cron_day`

used to created cron.d entry

##### <a name="-delta_dumper--cron_weekday"></a>`cron_weekday`

Data type: `String`

used to created cron.d entry

Default value: `'*'`

##### <a name="-delta_dumper--cron_monthday"></a>`cron_monthday`

Data type: `String`

used to created cron.d entry

Default value: `'*'`

##### <a name="-delta_dumper--cron_month"></a>`cron_month`

Data type: `String`



Default value: `'*'`

##### <a name="-delta_dumper--log_level"></a>`log_level`

Data type: `Optional[Enum['debug','info','notice','warning','error','critical','alert','emergency']]`



Default value: `undef`

##### <a name="-delta_dumper--facility"></a>`facility`

Data type:

```puppet
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
                'uucp']]
```



Default value: `undef`

##### <a name="-delta_dumper--checksum"></a>`checksum`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--checksum_binary"></a>`checksum_binary`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mbuffer"></a>`mbuffer`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--mbuffer_binary"></a>`mbuffer_binary`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mbuffer_opts"></a>`mbuffer_opts`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--rate_limit"></a>`rate_limit`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_skip_database"></a>`mysql_skip_database`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_skip_database"></a>`postgresql_skip_database`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--compression"></a>`compression`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--secondary_compression"></a>`secondary_compression`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--compressor_compress"></a>`compressor_compress`

Data type: `Optional[Hash]`



Default value: `undef`

##### <a name="-delta_dumper--compressor_uncompress"></a>`compressor_uncompress`

Data type: `Optional[Hash]`



Default value: `undef`

##### <a name="-delta_dumper--compressor_suffix"></a>`compressor_suffix`

Data type: `Optional[Hash]`



Default value: `undef`

##### <a name="-delta_dumper--backup_location"></a>`backup_location`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--old_backup_location"></a>`old_backup_location`

Data type: `Optional[Array[Stdlib::Absolutepath]]`



Default value: `undef`

##### <a name="-delta_dumper--tmpdir"></a>`tmpdir`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_bindir"></a>`mysql_bindir`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_bindir"></a>`postgresql_bindir`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_dump_database"></a>`postgresql_dump_database`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_extra_option"></a>`postgresql_extra_option`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_username"></a>`postgresql_username`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql_host"></a>`postgresql_host`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mysql"></a>`mysql`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--postgresql"></a>`postgresql`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--localcow"></a>`localcow`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--sys_logging"></a>`sys_logging`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--terminal_logging"></a>`terminal_logging`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--file_logging"></a>`file_logging`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_defaults_file"></a>`mysql_defaults_file`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_single_transaction"></a>`mysql_single_transaction`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_ignore_table"></a>`mysql_ignore_table`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_user"></a>`mysql_user`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_password"></a>`mysql_password`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_hostname"></a>`mysql_hostname`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_extra_option"></a>`mysql_extra_option`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--mysql_verify"></a>`mysql_verify`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--daily"></a>`daily`

Data type: `Optional[Integer]`



Default value: `undef`

##### <a name="-delta_dumper--weekly"></a>`weekly`

Data type: `Optional[Integer]`



Default value: `undef`

##### <a name="-delta_dumper--monthly"></a>`monthly`

Data type: `Optional[Integer]`



Default value: `undef`

##### <a name="-delta_dumper--week_start"></a>`week_start`

Data type: `Optional[Enum['Sun','Mon','Tue','Wed','Thu','Fri','Sat']]`



Default value: `undef`

##### <a name="-delta_dumper--month_start"></a>`month_start`

Data type: `Optional[Integer]`



Default value: `undef`

##### <a name="-delta_dumper--maxage"></a>`maxage`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--rsync_binary"></a>`rsync_binary`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--rsync_options"></a>`rsync_options`

Data type: `Optional[Array[String]]`



Default value: `undef`

##### <a name="-delta_dumper--prerun"></a>`prerun`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--postrun"></a>`postrun`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb"></a>`mongodb`

Data type: `Optional[Boolean]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_bindir"></a>`mongodb_bindir`

Data type: `Optional[Stdlib::Absolutepath]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_username"></a>`mongodb_username`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_password"></a>`mongodb_password`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_port"></a>`mongodb_port`

Data type: `Optional[Integer]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_hostname"></a>`mongodb_hostname`

Data type: `Optional[String]`



Default value: `undef`

##### <a name="-delta_dumper--mongodb_ssl"></a>`mongodb_ssl`

Data type: `Optional[Boolean]`



Default value: `undef`

### <a name="delta_dumper--configure"></a>`delta_dumper::configure`

A description of what this class does

#### Examples

##### 

```puppet
include delta_dumper::configure
```

### <a name="delta_dumper--install"></a>`delta_dumper::install`

A description of what this class does

#### Examples

##### 

```puppet
include delta_dumper::install
```

### <a name="delta_dumper--service"></a>`delta_dumper::service`

A description of what this class does

#### Examples

##### 

```puppet
include delta_dumper::service
```

