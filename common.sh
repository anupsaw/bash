#!/usr/bin/bash

# Regular Colors


export BLACK='\e[30m'
export BLUE='\e[34m'
export CYAN='\e[36m'
export GREEN='\e[32m'
export MAGENTA='\e[35m'
export RED='\e[31m'
export WHITE='\e[37m'
export YELLOW='\e[33m'
export NC='\e[00m'

echo -e "${GREEN}Color initialized...${NC}"

function error() {
    echo -e "${RED}$*${NC}"
}

function success() {
    echo -e "${GREEN}$*${NC}"
}

function info() {
    echo -e "${CYAN}$*${NC}"
}

export -f error
