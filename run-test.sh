#!/bin/bash

curl $(terraform output -raw public_ip):3000

if [ $? == 0 ]
then
  echo "success";
fi
