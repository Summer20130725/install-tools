#!/usr/bin/env bash

#
TIME=$(date "+%Y-%m-%d %H:%M:%S") ## Time
#

clear
printf "\t\t\033[38mwebsploit一键安装脚本！如果你想用apt依赖请按Ctrl+C退出此脚本程序。\033[0m\n"
printf "\t\t\t\t\033[34m   这是websploit的安装脚本。\033[0m\n"
printf "\t\t\t\t\t\033[33m请等待5s后开始\033[0m\n"

printf "\t\t\t\033[33m       ↓↓↓↓↓↓↓↓↓↓↓联系方式↓↓↓↓↓↓↓↓↓↓↓\033[0m\n"

printf "\n\t\t\tBiliBili: https://space.bilibili.com/218730298\n"
printf "\n\t\t\tTwitter: https://twitter.com/WhiteDays2007\n"
printf "\n\t\t\tGithub: https://github.com/whitedays2007\n"

sleep 5s
clear

printf "首先更新和升级。\n"
apt update && apt upgrade -y
apt install git python3 python3-pip -y

git clone https://github.com/websploit/websploit /opt/websploit/
cd /opt/websploit/

pip3 install -r requirements.txt
python3 setup.py install

printf "安装完成: $TIME;在终端里输入websploit!\n"