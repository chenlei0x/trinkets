#! /bin/bash
server=45.32.53.158
port=9004
pwd="O9CZ0k^y"
sslocal -s $server -p $port -l 1080 -k $pwd -t 600 -m aes-256-cfb
