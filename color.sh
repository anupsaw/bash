#!/usr/bin/bash
# Bash Colors

# running other bash script file
. ./export.sh

error "It is working..."

success "$USERNAME"

# echo -e "${Red} I am in RED"

# for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
