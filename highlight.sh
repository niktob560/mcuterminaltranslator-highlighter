#!/bin/bash

#Additional params for text:
BOLD='\033[1m'          #  ${BOLD}          # bold font (intense color)
DBOLD='\033[2m'         #  ${DBOLD}         # half-brightness color (dark-gray, regardless of color)
NBOLD='\033[22m'        #  ${NBOLD}         # set normal intense
UNDERLINE='\033[4m'     #  ${UNDERLINE}     # underline
NUNDERLINE='\033[4m'    #  ${NUNDERLINE}    # disable underline
BLINK='\033[5m'         #  ${BLINK}         # blinking
NBLINK='\033[5m'        #  ${NBLINK}        # disable blinking
INVERSE='\033[7m'       #  ${INVERSE}       # reverced (chars got bgcolor, background -- char colors)
NINVERSE='\033[7m'      #  ${NINVERSE}      # disable reverced
BREAK='\033[m'          #  ${BREAK}         # all attrs disabled
NORMAL='\033[0m'        #  ${NORMAL}        # all attrs disabled

# Text color:
BLACK='\033[0;30m'      #  ${BLACK}    # black char color
RED='\033[0;31m'        #  ${RED}      # red char color
GREEN='\033[0;32m'      #  ${GREEN}    # green char color
YELLOW='\033[0;33m'     #  ${YELLOW}   # yellow char color
BLUE='\033[0;34m'       #  ${BLUE}     # blue char color
MAGENTA='\033[0;35m'    #  ${MAGENTA}  # magent char color
CYAN='\033[0;36m'       #  ${CYAN}     # cyan char color
GRAY='\033[0;37m'       #  ${GRAY}     # gray char color

# Bold text color :
DEF='\033[0;39m'        #  ${DEF}
DGRAY='\033[1;30m'      #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'    #  ${LYELLOW}
LBLUE='\033[1;34m'      #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'      #  ${LCYAN}
WHITE='\033[1;37m'      #  ${WHITE}

# Background color
BGBLACK='\033[40m'      #  ${BGBLACK}
BGRED='\033[41m'        #  ${BGRED}
BGGREEN='\033[42m'      #  ${BGGREEN}
BGBROWN='\033[43m'      #  ${BGBROWN}
BGBLUE='\033[44m'       #  ${BGBLUE}
BGMAGENTA='\033[45m'    #  ${BGMAGENTA}
BGCYAN='\033[46m'       #  ${BGCYAN}
BGGRAY='\033[47m'       #  ${BGGRAY}
BGDEF='\033[49m'        #  ${BGDEF}

multidevice=$1

if [[ ! -z $multidevice ]]; then
    while read line; do
        echo "$line" | tr -s ' ' | awk -v f=5 '{printf "\033[7m""\033[1;35m " $1 " \033[1;36m " $2 "  " $3 " \033[1;32m " $4 " \033[0m"; for(i=f;i<NF;i++) printf " "$i" "; print " "$NF}'
    done
else
    while read line; do
        echo "$line" | tr -s ' ' | awk -v f=4 '{printf "\033[7m""\033[1;35m " $1 " \033[1;36m " $2 "  " $3 " \033[0m"; for(i=f;i<NF;i++) printf " "$i" "; print " "$NF}'
    done
fi
echo ""