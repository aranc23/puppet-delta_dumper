# delta_dumper

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with delta_dumper](#setup)
    * [What delta_dumper affects](#what-delta_dumper-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with delta_dumper](#beginning-with-delta_dumper)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

delta_dumper installs and configures delta-dumper, a simple perl
script for dumping mysql and postgresql databases in a uniform way.

## Setup

### What delta_dumper affects

delta_dumper module does not currently install any needed perl modules
it might need to function.  It might in a future version.  The module
adds a file in /etc/cron.d/ for running delta-dumper.

### Setup Requirements

delta-dumper defaults to writing to /var/delta-dumper/backups and
logging to /var/log/delta-dumper or ~/.local/state/delta-dumper for
non-root users.  Changing the paramter backup_location does not cause
this module (or delta-dumper itself) to create the configured
directory. The log directory will however be created by delta-dumper
if needed.

### Beginning with delta_dumper

class { 'delta_dumper':
  mysql => true,
}

## Usage

At the very least one of the parameters mysql or postgresql needs to
be set, otherwise delta-dumper will run but do no work.  Other
parameters can be provided as needed.  By default delta-dumper only
keeps the most recent dump for any given database so setting daily,
weekly, or monthly makes some sense as well, unless of course the dump
is to be captured in a snapshot or copied to another system.

class { 'delta_dumper':
  mysql           => true,
  backup_location => '/etc/csg-db-backups',
  compression     => 'xz',
  daily           => 7,
  weekly          => 6,
  monhtly         => 2,
}


## Limitations

No attempt is made to install all the requirements for the
delta-dumper perl script.

Notably, although delta-dumper supports various compression programs
this module doesn't attempt to install bzip2, zstd, etc.
