#!/bin/sh
###
###   set up Docker in CentOS Server
###
###    2015 Oct.2  K.Momose
#####################################################
rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
if [ $? -ne 0 ]; then
        exit 1
fi
yum -y install http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
if [ $? -ne 0 ]; then
        exit 1
fi

#----------------
# Install Docker
#----------------
yum -y install docker-io
if [ $? -ne 0 ]; then
        exit 1
fi

#----------------------
# Start Docker daemon
#----------------------
service docker start
chkconfig docker on
docker --version
exit0
