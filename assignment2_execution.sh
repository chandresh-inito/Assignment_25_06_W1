#! /bin/bash

x=$(ps -ax | grep restart.sh | awk '{print $1}')

while [ "$(ps -o state= -p $x)"=="S" ]
do
	zsh restart.sh
done
