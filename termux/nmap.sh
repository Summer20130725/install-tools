#!/usr/bin/env bash

#
TIME=$(date "+%Y-%m-%d %H:%M:%S") ## Time
#
printf "\n\033[34m

NN      N       MM            MM            A            P P P P P P P
N N     N       M M          M M           A A           P             P
N  N    N       M  M        M  M          A   A          P              P
N   N   N       M   M      M   M         A     A         P             P
N    N  N       M    M    M    M        A A A A A        P P P P P P P
N     N N       M     M  M     M       A         A       P
N      NN       M      MM      M      A           A      P

\033[0m"

printf "\n\t\033[34m这个nmap安装脚本只适合termux平台，其他平台请退出.\033[0m\n"
printf "\t\t\033[34m脚本编写者bilibili：Windows-8\033[0m\n"
printf "\t\t\033[33m↓↓↓↓↓↓↓↓↓↓↓联系方式↓↓↓↓↓↓↓↓↓↓↓\033[0m\n"
printf "\n\tBiliBili: https://space.bilibili.com/218730298\n"
printf "\tTwitter: https://twitter.com/WhiteDays2007\n"
printf "\tGithub: https://github.com/whitedays2007\n"

printf "\n\t\t\033[36m开始进入安装默认等待5s\033[0m\n"

sleep 5s
clear
#New Installer
apt update && apt upgrade -y
apt install nmap -y

#Old Installer

#apt update && apt upgrade -y
#apt install openssl openssl-tool libssh libssh2 liblua liblua52 libluajit make libnet libpcap git autoconf -y
#apt install python2 python clang gdb -y

#git clone https://github.com/nmap/nmap $PREFIX/opt/nmap/
#cd $PREFIX/opt/nmap/
#./configure
#make && make install

printf "\t\t\033[36m完成：$TIME\033[0m\n"