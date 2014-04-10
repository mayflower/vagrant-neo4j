# Class: neo
#
# This module installs Neo4j Server and Python language bindings
#
# Parameters: NA
#
# Actions: NA
#
# Requires: NA
#
# Sample Usage: 
#
# [Remember: No empty lines between comments and class definition]
package { 'curl': ensure => installed }
package { 'git': ensure => installed }
package { 'maven': ensure => installed }
package { 'default-jdk': ensure => installed }

include neo
