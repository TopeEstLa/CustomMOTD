#!/bin/bash
noir='\e[0;30m'
gris='\e[1;30m'
rouge='\e[0;31m'
rose='\e[1;31m'
vertfonce='\e[0;32m'
vertclair='\e[1;32m'
orange='\e[0;33m'
jaune='\e[1;33m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
violetfonce='\e[0;35m'
violetclair='\e[1;35m'
cyanfonce='\e[0;36m'
cyanclair='\e[1;36m'
grisclair='\e[0;37m'
blanc='\e[1;37m'
neutre='\e[0;m'

is_buster() {
[[ $(lsb_release -d) =~ "buster" ]]
return $?
}
is_stretch() {
[[ $(lsb_release -c) =~ "stretch" ]]
return $?
}
is_ubuntu16() {
[[ $(lsb_release -d) =~ "Ubuntu 16.04" ]]
return $?
}
is_ubuntu18() {
[[ $(lsb_release -d) =~ "Ubuntu 18.04" ]]
return $?
}
is_ubuntu20() {
[[ $(lsb_release -d) =~ "Ubuntu 20.04" ]]
return $?
}
is_centos7() {
[[ $(cat /etc/centos-release) =~ "7" ]]
return $?
}
is_centos8() {
[[ $(cat /etc/centos-release) =~ "8" ]]
return $?
}

if is_stretch; then
  echo -e ""
  echo -e "You use Debian 9"
  echo -e ""
  sudo apt update && sudo apt upgrade -y
  sudo apt install neofetch
  ln -n /usr/bin/neofetch /etc/update-motd.d

elif is_buster; then
  echo -e ""
  echo -e "You use Debian 10"
  echo -e ""
  sudo apt update && sudo apt upgrade -y
  sudo apt install neofetch
  ln -n /usr/bin/neofetch /etc/update-motd.d

elif is_ubuntu16; then
  echo -e ""
  echo -e "You use Ubuntu 16.04 LTS"
  echo -e ""

elif is_ubuntu18; then
  echo -e ""
  echo -e "You use Ubuntu 18.04 LTS"
  echo -e ""

elif is_ubuntu20; then
  echo -e ""
  echo -e "You use Ubuntu 20 LTS"
  echo -e ""

elif is_centos7; then

  echo -e ""
  echo -e "You use Centos 7"
  echo -e "Sorry but this os is not yet available"
  echo -e ""

elif is_centos8; then
  echo -e ""
  echo -e "You use Centos 8"
  echo -e "Sorry but this os is not yet available"
  echo -e ""

else
  echo -e ""
  echo -e "Sorry but this os is not yet available"
  echo -e ""
exit
fi