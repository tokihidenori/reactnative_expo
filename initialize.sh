#!/bin/sh

containerName="react_native"

if [ "$#" -gt 0 ]
then
  appName=$1
else
  # Input Application Name
  echo ":Please Input App Name"
  read appName
fi

echo "Project Name: $appName"

# Set Host ip address
GetIp() {
  echo "$(ifconfig | grep -A 1 'en0' | tail -1 | cut -d ' ' -f 2 | cut -d ' ' -f 1)"
}

# Cloning git repositry
CloneTemplateGitRepo() {
  rm -rf "./$1"
  git clone https://github.com/tokihidenori/reactnative_expo_on_docker.git $1 && rm -rf $1/.git
}

# Create environments file
CreateEnv() {
  touch .env
  echo "REACT_NATIVE_PACKAGER_HOSTNAME=$ipHost" >> .env
  echo "ADB_IP=192.168.50.106,192.168.50.107" >> .env
}

ipHost=`GetIp`
echo "Host Ip address: $ipHost"

# CloneTemplateGitRepo $appName
# cd $appName
CreateEnv

# Initialize expo
docker-compose run --rm $containerName expo init ./ --name $appName

# Install react-native-paper

echo "Do it Install raact-native-paper?[y/n]"
read isInstall

if [ $isInstall = "y" ]
then
  docker-compose run --rm $containerName expo install react-native-paper
fi
