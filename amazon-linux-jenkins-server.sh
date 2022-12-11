#!/bin/bash

sudo su ;

yum update -y ;

wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo ;

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key ;

sudo amazon-linux-extras install java-openjdk11 -y ;

yum install jenkins -y ;

systemctl start jenkins ;

systemctl enable jenkins ;

systemctl status jenkins > jenkins.txt ;

echo "The jenkins server is reday!!!!!  Thank you@@@" > jenkins-server-status.txt
