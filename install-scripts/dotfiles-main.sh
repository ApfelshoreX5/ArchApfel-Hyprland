#!/bin/bash
# 💫 https://github.com/JaKooLit 💫 #
# Hyprland-Dots to download from main #

## WARNING: DO NOT EDIT BEYOND THIS LINE IF YOU DON'T KNOW WHAT YOU ARE DOING! ##

source "$(dirname "$(readlink -f "$0")")/Global_functions.sh"

# Check if Hyprland-Dots exists
printf "${NOTE} Cloning and Installing ${SKY_BLUE}Apfel's Hyprland Dots${RESET}....\n"

if [ -d Apfelshores-Dots ]; then
  cd Apfelshores-Dots
  git stash
  git pull
  git stash apply
  chmod +x copy.sh
  ./copy.sh 
else
  if git clone --depth 1 https://github.com/ApfelshoreX5/Apfelshores-Dots; then
    cd Apfelshores-Dots || exit 1
    chmod +x copy.sh
    ./copy.sh 
  else
    echo -e "$ERROR Can't download ${YELLOW}Apfel's Hyprland-Dots${RESET} . Check your internet connection"
  fi
fi

printf "\n%.0s" {1..2}