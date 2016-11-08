#!/bin/bash

sudo apt-get clean
sudo apt-get update

sudo apt-get install curl libicu52 libunwind8 gettext -y
sudo curl -SL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?LinkID=827536
sudo mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet
sudo ln -s /opt/dotnet/dotnet /usr/local/bin
sudo rm dotnet.tar.gz

mkdir install
cd install
dotnet new
cd ..
rm -Rf install