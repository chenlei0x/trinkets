#!/bin/bash
ha_no=$1
echo $ha_no
host=bj-ha-${ha_no}.ha.suse.asia
user=root
if [ $ha_no == 3 -o $ha_no == 1 ]
then
	passwd=novell
else
	passwd=suse
fi
known_hosts="$HOME/.ssh/known_hosts"

if [ -z $ha_no ]
then
	echo invalid arg
	exit
fi

if [ -z "$(grep $host ${known_hosts})" ]
then
	echo not known
	ssh -X ${user}@${host}
else
	sshpass -p $passwd ssh -X $user@$host
fi
