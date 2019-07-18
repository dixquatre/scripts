#!/bin/bash
#   ██████  ██████  ██   ██ ██████  █████   █████  ██████  █████  ██████
#  ██░░░░  ██░░░░██░██  ░██░░██░░████░░░██ ██░░░██░░██░░████░░░██░░██░░██
# ░░█████ ░██   ░██░██  ░██ ░██ ░░░██  ░░ ░███████ ░██ ░░░███████ ░██ ░░
#  ░░░░░██░██   ░██░██  ░██ ░██   ░██   ██░██░░░░  ░██   ░██░░░░  ░██
#  ██████ ░░██████ ░░██████░███   ░░█████ ░░██████░███   ░░██████░███
# ░░░░░░   ░░░░░░   ░░░░░░ ░░░     ░░░░░   ░░░░░░ ░░░     ░░░░░░ ░░░
#  r  e  a  d     c  o  d  e     l  i  k  e     a     w  i  z  a  r  d
#
# sourcerer by xero harrison (http://sourcerer.xero.nu)
#  ├─ based on sorcerer by Jeet Sukumaran (http://jeetworks.org)
#  └─ based on mustang by Henrique C. Alves (hcarvalhoalves@gmail.com)
#
#█▓▒░ tty colors
if [ "$TERM" = "linux" ]
then
    echo -en "\e]P0222222" #black
    echo -en "\e]P8272822" #darkgrey
    echo -en "\e]P1aa4450" #darkred
    echo -en "\e]P9ff6a6a" #red
    echo -en "\e]P2719611" #darkgreen
    echo -en "\e]PAb1d631" #green
    echo -en "\e]P3ff9800" #brown
    echo -en "\e]PB87875f" #yellow
    echo -en "\e]P46688aa" #darkblue
    echo -en "\e]PC90b0d1" #blue
    echo -en "\e]P58f6f8f" #darkmagenta
    echo -en "\e]PD8181a6" #magenta
    echo -en "\e]P6528b8b" #darkcyan
    echo -en "\e]PE87ceeb" #cyan
    echo -en "\e]P7d3d3d3" #lightgrey
    echo -en "\e]PFc1cdc1" #white
    clear #for background artifacting
fi

