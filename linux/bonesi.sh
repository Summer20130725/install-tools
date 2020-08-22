#!/usr/bin/env bash

time=$(date "+%Y-%m-%d %H:%M:%S")

printf "\033[34mstart time $time\033[0m\n"
printf "\033[1;36mbonesi DDoS工具安装脚本\n此脚本只对基于Debian的系统有用\n在安装过程中请勿关闭终端\n如果已经安装了请Ctrl+C终止操作\n请等待.........\033[0m\n"
printf "\033[1;35m\nBiliBili:Windows 8\033[0m\n"

sleep 5s

clear

printf "\033[1;36mbonesi DDoS工具需要安装一下库\033[0m\n"
printf "\033[1;36m以下库名：libpcap-dev(Debian系统) libnet-dev(Debian系统) autoconf automake gcc git make cmake clang\033[0m\n"
printf "\033[1;36m这些库务必要进行安装，否则无法正常运行\033[0m\n"

sleep 5s

apt update && apt upgrade -y

apt install libpcap-dev libnet-dev autoconf automake gcc git make cmake clang -y

sleep 2.5s

git clone https://github.com/Markus-Go/bonesi /opt/bonesi

cd /opt/bonesi/

autoreconf -f -i

./configure

printf "\033[1;36m开始编译\033[0m\n"

make

make install

printf "\033[1;36m全部工作已经完成\n程序安装完成\033[0m\n"

printf "\033[1;36tend time $time\033[0m"