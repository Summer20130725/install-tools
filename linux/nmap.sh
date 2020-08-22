#!/usr/bin/env bash 

time=$(date "+%Y-%m-%d %H:%M:%S")

printf "\n\033[34m

NN      N       MM            MM            A            P P P P P P P
N N     N       M M          M M           A A           P             P
N  N    N       M  M        M  M          A   A          P              P
N   N   N       M   M      M   M         A     A         P             P
N    N  N       M    M    M    M        A A A A A        P P P P P P P
N     N N       M     M  M     M       A         A       P
N      NN       M      MM      M      A           A      P

\033[0m"

printf "\nBiliBili: https://space.bilibili.com/218730298\n"
printf "\nTwitter: https://twitter.com/WhiteDays2007\n"
printf "\nGithub: https://github.com/whitedays2007\n"

printf "\n\033[36m欢迎使用由Bilibili：Windows 8编写的nmap编译脚本.\033[0m\n"
printf "该脚本只适合基于Debian发行系统其它Linux系统无效包括Termux终端.\n"
printf "如果你的终端不是超级用户的#，请使用sudo执行\n"
printf "\033[33m请等待5s开始\033[0m\n"

sleep 5s

clear

apt update && apt upgrade -y

apt install gcc g++ gdb git make autoconf python libssh-dev openssl libblas3 liblinear4 liblua5.3-0 lua-lpeg -y

apt install liblinear-tools liblinear-dev -y

printf "\033[34mClone nmap.\033[0m\n"

git clone https://github.com/nmap/nmap /opt/nmap/

cd /opt/nmap/

chmod +x configure && ./configure

make && make install

printf "\n编译完成！并把二进制执行文件移动到环境里！\n"
printf "\nComplete time $time\n"
