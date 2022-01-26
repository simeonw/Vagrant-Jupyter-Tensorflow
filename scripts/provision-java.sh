#!/bin/bash
# sudo add-apt-repository ppa:deadsnakes/ppa
# sudo apt-get update
# sudo apt install python3.9
#

# pip install tensorflow -y

echo "Installing default Jave Runtime Environment"
sudo dpkg --configure -a
sudo apt -y install default-jre
# sudo apt -y install openjdk-8-jdk

echo "########################################################
#------------------------------------------------------#
#----------Welcome to your data science box------------#
#----------To access your jupyter notebook-------------#
#----------point your browser to: ---------------------#
#-------------------http://localhost:8888--------------#
#------------------------------------------------------#
########################################################"
