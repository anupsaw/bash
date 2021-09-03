#!/usr/bin/bash

. ./common.sh

info "Automate committing starts..."

while :; do
    case $1 in
    -m | --message)
        MSG=$2
        shift 2
        ;;
    -*)
        error "Not Valid argument $1"
        exit 1
        ;;
    *)
        break
        ;;
    esac
done

if [[ -z "$MSG" ]]; then
    error "ERROR! Please provide a commit message"
    info "example :- ./commit.sh -m 'bash learning commit'"
    exit 1
fi

# FILES=$(git status --porcelain)

git status --porcelain

git add .
success "git added all changes..."

git commit -m "$MSG"
success "git committed all staged files..."

git push
success "git pushed all file to origin..."
