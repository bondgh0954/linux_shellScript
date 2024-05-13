#!/bin/bash

fileName=config.yaml

config_dir=$1

if [ -d "$config_dir" ]
then
  echo "reading the config directory contents"
  config_files=$(ls "$config_dir")
else
  echo "config dir not found. creating one"
  mkdir "$config_dir"
  touch "$config_dir/config.txt"
  
fi

user_group=$2
if [  "$user_group"=="bondgh" ]
then
  echo "configure server"
elif 
  [ "$user_group"=="devops" ]
then
  echo "administer server" 
else 
  echo "No permission to configure server. wrong user group"
fi


echo "configuring files"
echo "here are the content of the files: $config_files"
