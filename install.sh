#! /bin/bash
cd $(dirname $0)
pwd=$PWD
user_bin=~/bin

#look how ugly it is!!!
#user_bin=$(cd ~/bin && pwd)
#if [ $pwd == $user_bin ]

[ ! -e $user_bin ] && mkdir $user_bin
if [ $user_bin -ef $pwd ]
then
	echo "in \$HOME/bin"
	exit
fi
for i in $(find $pwd -maxdepth 1 -executable -type f)
do
	ln -s  $i $user_bin
done



