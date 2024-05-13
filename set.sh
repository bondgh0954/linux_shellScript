#!/bin/bash

echo "setup and configure server"

fileName=config.yaml

if [ -d "config" ]
then
  echo "reading the content of the configuration files"
  config_files=$(ls config)
else
  echo "config file does not exit. creating one"
  mkdir config
fi

echo "configuring something with config files"
echo " these are the content of the config files: $config_files"


user_group=$1
if [ "$user_group"=="bondgh" ]
then
  echo "administer server"
elif [ "$user_group"=="devops" ]
then
  echo "configure server"
else
  echo "you have no permission to configure server"
fi
