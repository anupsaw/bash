#!/usr/bin/bash

. ./export.sh

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

echo $MSG


FILES=$(git status --porcelain)

git add .
echo "git added all changes... $FILES"

git commit -m "$MSG"
echo "git committed all staged files... $FILES"

git push
echo "git pushed allf file to origin... $FILES"
