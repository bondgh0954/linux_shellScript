#!/bin/bash
echo "parameters: $*"
echo "number of parameters: $#"

for params in $*

  do
  if [ -d "$params" ]
  then
    echo "executing script in the folder"
    $(ls "$params")
  else
    echo "creating a directory"
  fi
done

sum=0
while true
  do
  read -p "enter a score" score

  if [ "$score"=="q" ]
  then
    break
  fi
  sum=$(($sum+$score))
  echo "total score: $sum"
done
