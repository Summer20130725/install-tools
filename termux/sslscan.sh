#!/usr/bin/env bash
#
TIME=$(date "+%Y-%m-%d %H:%M:%S") ## Time
#
printf "
        \n\t这个是sslscan的安装脚本，此脚本只适合Termux平台其他平台请退出。\n
        \t\t\t请等待2s后开始\n
        \t\t\033[33m↓↓↓↓↓↓↓↓↓↓↓联系方式↓↓↓↓↓↓↓↓↓↓↓\033[0m\n

        \tBiliBili: https://space.bilibili.com/218730298\n
        \tTwitter: https://twitter.com/WhiteDays2007\n
        \tGithub: https://github.com/whitedays2007\n
"

sleep 2s
clear

printf "更新与升级包\n"

apt update && apt upgrade -y
apt install clang make python python2 git -y

git clone https://github.com/rbsec/sslscan $PREFIX/opt/sslscan/
cd $PREFIX/opt/sslscan/
clear

printf "编译时间比较长！请耐心等待！\n"
make static && make install

printf "\033[34m编译完成:$TIME\033[0m"