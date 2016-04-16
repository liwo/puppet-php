# == Class: php::extension::gearman::params
#
# Defaults file for the gearman PHP extension
# todo: When github back up add link to new type of provider...
#
# === Parameters
#
# No parameters
#
# === Variables
#
# [*ensure*]
#   The version of the package to install
#   Could be "latest", "installed" or a pinned version
#   This matches "ensure" from Package
#
# [*package*]
#   The package name in your provider
#
# [*provider*]
#   The provider used to install the package
#
# [*inifile*]
#   The path to the extension ini file
#
# [*settings*]
#   Hash with 'set' nested hash of key => value
#   set changes to agues when applied to *inifile*
#
# === Examples
#
# No examples
#
# === Authors
#
# Christian "Jippi" Winther <jippignu@gmail.com>
#
# === Copyright
#
# Copyright 2012-2015 Christian "Jippi" Winther, unless otherwise noted.
#
class php::extension::gearman::params {

  $ensure   = $php::params::ensure
  $package  = "php5-gearman"
  $provider = undef
  $inifile  = "${php::params::config_root_ini}/gearman.ini"
  $settings = [
    'set ".anon/extension" "gearman.so"'
  ]

}
