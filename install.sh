#! /bin/bash
cd $(dirname $0)
pwd=$PWD
user_bin=$(cd ~/bin && pwd)
if [ $pwd == $user_bin ]
then
	echo "in \$HOME/bin"
	exit
fi
for i in $(find $pwd -maxdepth 1 -executable -type f)
do
	ln -s  $i ~/bin/
done



