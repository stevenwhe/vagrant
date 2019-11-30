#!/bin/bash

# Updates and Upgrades
yum update -y --exclude=kernel
# Tools
yum install -y git screen net-tools unzip vim
yum install -y wget nc telnet

