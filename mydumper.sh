#!/bin/bash
# Binlogic MyDumper 0.9 with deps for centos and Percona Server version: 5.6.25-73.1 Percona Server (GPL), Release 73.1, Revision 07b797f
cd /home
yum install bzr-python26.x86_64
bzr branch lp:mydumper
cd mydumper/
yum install glib2-devel zlib-devel pcre-devel openssl-devel
yum install cmake.x86_64
yum install gcc-c++.noarch
yum install Percona-Server-devel-56.x86_64
cmake . -DCMAKE_INSTALL_PREFIX=~/bin/mydumper
make
