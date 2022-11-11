#!/bin/bash

Color_off='\033[0m'       # Text Reset
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

Bold_Color_off='\033[1m'  # Text Reset
Bold_Black='\033[1;30m'   # Bold Black
Bold_Red='\033[1;31m'     # Bold Red
Bold_Green='\033[1;32m'   # Bold Green
Bold_Yellow='\033[1;33m'  # Bold Yellow
Bold_Blue='\033[1;34m'    # Bold Blue
Bold_Purple='\033[1;35m'  # Bold Purple
Bold_Cyan='\033[1;36m'    # Bold Cyan0
Bold_White='\033[1;37m'   # Bold White

#=============================================================================
# echo with color function
#=============================================================================
echo_with_color () {
  printf '%b\n' "$1$2$Color_off" >&2
}

#=============================================================================
# logo function
#=============================================================================
logo () {
    echo_with_color ${Bold_Yellow} "___________.__  .__  __                   ________              ________     "
    echo_with_color ${Bold_Yellow} "\_   _____/|  | |__|/  |_  ____           \______ \   _______  _\_____  \ ______  ______"
    echo_with_color ${Bold_Yellow} " |    __)_ |  | |  \   __\/ __ \   ______  |    |  \_/ __ \  \/ //   |   \\\____ \/  ___/"
    echo_with_color ${Bold_Red} " |        \|  |_|  ||  | \  ___/  /_____/  |    \`   \  ___/\   //    |    \  |_> >___ \ "
    echo_with_color ${Bold_Blue} "/_______  /|____/__||__|  \___  >         /_______  /\___  >\_/ \_______  /   __/____  >"
    echo_with_color ${Bold_Yellow} "        \/                    \/                  \/     \/             \/|__|       \/ "
    echo_with_color ${Bold_Red} "-------------------------------------------------------------------------------------------"
    echo_with_color ${Bold_Yellow} "---------------------------------------------------------- Embedded DevSecOps Goodness ----"
    echo_with_color ${Bold_Red} ""
}


#=============================================================================
# home function
#=============================================================================
home () {
    clear
    logo
    cd /workspaces/edo-demo
}
