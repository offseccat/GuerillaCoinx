#!/bin/bash -   
    #title          :guerilla_ccr_mother.sh
    #description    :Generates new CN based Cryptocurrency including logo, website, pool, genesis block, wallet and much more within couple of hours.
    #author         :offseccat
    #date           :20170907
    #version        :1.0a   
    #usage          :./guerilla_ccr_mother.sh
    #notes          :       
    #bash_version   :4.4.11(1)-release
    #Donation XMR   :46Jh7aZkVCLKAjFiyNYD6vhrEFtwswVSbVsqMyGsrUUV1bjmQJv4EwFb2xWNqS3x7aWnMNM1UWKyfZd6ZcscqncSQEFpZtXs
    #Donation BTC   :13MWtnPZPy54q3qhxgbYA14m89fZkn6noK
    #================================================================================



### | Declerations          | ====================================================#

# Color Decleratins.
ESC="["
RESET=$ESC"39m"
RED=$ESC"31m"
GREEN=$ESC"32m"
LBLUE=$ESC"36m"
BLUE=$ESC"34m"
BLACK=$ESC"30m"

#[*] Status Indicator with different colors.
RLS=${RED}"[*]"${RESET}
BLS=${BLUE}"[*]"${RESET}
GLS=${GREEN}"[*]"${RESET}
RES=${RED}"[!]"${RESET}

#default options
VAR1=""
VAR2=""
VAR3=""
VAR4=""

#If there is no parameter that is supplied print Explanation and Input Syntax.
EXPLANATION="General Quick Bashin Script So far..EDIT !"
USAGE_PARAMS="<input1> <input2> <inputx>" 

#timestamp function can be called as is.
timestamp() { 
    date +"%T" 
}

function usage {
    echo "Usage: $0 -a targets.txt [-p tcp/udp/all] [-i interface] [-n options] [-h]"
    echo "       -a: <EXPLAIN>"
    echo "       -b: <EXPLAIN>"
    echo "       -c: <EXPLAIN>"
    echo "       -d: <EXPLAIN>"
    echo "       -e: <EXPLAIN> "
    echo "       -h: Display Help Screen"
}


### | Main Flow             | ====================================================#


#Root Only Control
if [[ ! $(id -u) == 0 ]]; then
    echo -e "${RED}[!]${RESET} This script must be run as root"
    exit 1
fi
#Software Checking for requirements
if [[ -z $(which figlet) ]]; then
    echo -e "${RED}[!]${RESET} Unable to find figlet. Cannot call Banner."
    exit 1
fi

if [ -z "$1" ]; then
    #timestamp
    echo -e "${RLS} $EXPLANATION"
    # echo -e "${RLS} Usage : $0 ${BLUE}$USAGE_PARAMS ${RESET}"  # Simplified USAGE for files only
    usage
exit 0

fi

while getopts "a:b:c:d:h" OPT; do
    case $OPT in
        a) VAR1=${OPTARG};;
        b) VAR2=${OPTARG};;
        c) VAR3=${OPTARG};;
        d) VAR4=${OPTARG};;
        h) usage; exit 0;;
        *) usage; exit 0;;
    esac
done

if [[ -z $targets ]]; then
    echo "[!] No target file provided"
    usage
    exit 1
fi

if [[ ${proto} != "tcp" && ${proto} != "udp" && ${proto} != "all" ]]; then
    echo "[!] Unsupported protocol"
    usage
    exit 1
fi

echo -e "${BLUE}[+]${RESET} VAR1 : ${VAR1}"
echo -e "${BLUE}[+]${RESET} VAR2 : ${VAR2}"
echo -e "${BLUE}[+]${RESET} VAR3 : ${VAR3}"
echo -e "${BLUE}[+]${RESET} VAR4 : ${VAR4}"

### | Scratch PAD           | ====================================================#

#echo -e "${RLS} ${GLS} ${BLS}"

# [-----------------------------------------------------------------------------------------]
# {*} Function status = Skeleton[ ]-Alpha[ ]-Beta[ ]-Functional[ ]-Finished[ ]-Perfections[ ]
# {*} Function Desc   = 
# {*} Function To do  = None
# {*} Priority Stat   = Least[ ]-Avg[ ]-Medium[ ]-Ab.Avg[ ]-Highest[ ]-Critical[ ]-Extreme[ ]
# {*} Note/Bugs/Usg   = None
# [-----------------------------------------------------------------------------------------]

### | To Be Implemented     | ====================================================#

### | Discard Pile Below    | ====================================================#

#=================================================================================#

#=================================================================================#
