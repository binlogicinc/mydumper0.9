#!/bin/bash
# Binlogic MyDumper Easy Install with Deps for Ubuntu & MariaDB

echo "instalacion rapida de esclavo de MySQL"
echo "Empezando Instalacion"
mkdir ~/mydumper
cd ~/mydumper
apt-get  -y install bzr
bzr branch lp:mydumper
apt-get  -y install libglib2.0-dev zlib1g-dev libpcre3-dev libssl-dev
#MariaDB
#apt-get  -y libmariadbclient-dev 
#MySQL VERSIONS
apt-get -y libmysqld-dev
apt-get  -y install cmake
apt-get  -y install gcc-4.4
cd mydumper
make clean 
cmake .
make
make install
echo "MyDumper 0.9 Instalado"
