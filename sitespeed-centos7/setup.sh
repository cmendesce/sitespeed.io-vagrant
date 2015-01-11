#!/bin/bash
set -e

if [ ! -f /etc/root_provisioned_at ]
  then
  # Update
  yum update -y

  # You need the epel-release for NodeJS & npm
  yum install -y git firefox java-1.7.0-openjdk epel-release

  # Install what's needed for Xvfb
  yum -y install Xvfb libXfont Xorg
  yum -y groupinstall "X Window System" "Desktop" "Fonts" "General Purpose Desktop"

  # Lets get node
  yum install -y nodejs npm

  # Install sitesped.io
  npm install -g sitespeed.io

  date > /etc/root_provisioned_at
fi
