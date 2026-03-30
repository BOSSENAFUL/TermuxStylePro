#!/bin/bash

# Elite Terminal - BOSS
# Style: 3 - Custom Theme

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
GRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
RESET='\033[0m'
BOLD='\033[1m'

clear

# Top border
echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════╗${RESET}"

# ASCII Art Banner
echo -e "${GREEN}${BOLD}"
cat << 'BANNER'
 ____   ___  ____ ____  
| __ ) / _ \/ ___/ ___| 
|  _ \| | | \___ \___ \ 
| |_) | |_| |___) |__) |
|____/ \___/|____/____/ 
                        

BANNER
echo -e "${RESET}"

# Subtitle
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"
echo -e "${WHITE}               ▰▰▰ ${WHITE}ELITE CYBER TERMINAL${WHITE} ▰▰▰${RESET}"
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"

# System Info
echo -e "${MAGENTA}┌─[${GREEN}SYSTEM INFO${MAGENTA}]${RESET}"
echo -e "${MAGENTA}│${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Operator    ${WHITE}:${GREEN} BOSS${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}User        ${WHITE}:${GREEN} $(whoami)${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Hostname    ${WHITE}:${GREEN} $(hostname)${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Shell       ${WHITE}:${GREEN} $SHELL${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Date        ${WHITE}:${GREEN} $(date '+%d %B %Y')${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Time        ${WHITE}:${GREEN} $(date '+%H:%M:%S %Z')${RESET}"

# Platform detection
if [ -d "/data/data/com.termux" ]; then
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Platform    ${WHITE}:${GREEN} Termux (Android)${RESET}"
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Storage     ${WHITE}:${GREEN} $(df -h /data | tail -1 | awk '{print $4}') Free${RESET}"
else
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Platform    ${WHITE}:${GREEN} $(uname -s)${RESET}"
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Kernel      ${WHITE}:${GREEN} $(uname -r)${RESET}"
fi

echo -e "${MAGENTA}└──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Status      ${WHITE}:${GREEN} ✓ READY${RESET}"

# Separator
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"

# Quotes
quotes=(
    "Access granted. System online."
    "Initializing cyber protocols..."
    "The quieter you become, the more you can hear."
    "In a world of locked rooms, the key is power."
    "Code is poetry written in logic."
    "Every system has vulnerabilities."
    "Think like a hacker, act like a guardian."
    "Knowledge is the ultimate weapon."
)

random_quote=${quotes[$RANDOM % ${#quotes[@]}]}
echo -e "${WHITE}   » ${WHITE}$random_quote${RESET}"

# Bottom border
echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════╝${RESET}"

echo ""
echo -e "${RED}[${GREEN}✓${RED}]${GREEN} System initialized and ready...${RESET}"
echo ""

# Loading bar
echo -ne "${GREEN}[${RESET}"
for i in {1..50}; do
    echo -ne "${GREEN}═${RESET}"
    sleep 0.01
done
echo -e "${GREEN}]${WHITE} 100%${RESET}"
echo ""

# Set custom PS1 prompt permanently
export PS1="${RED}╭─${GREEN}[${CYAN}BOSS${GREEN}@${GREEN}MATRIX${GREEN}]${RED}─${YELLOW}[${WHITE}\w${YELLOW}]${RESET}\n${GREEN}└──>${RESET} "
