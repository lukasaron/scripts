#!/bin/bash
if [ -z $PROJECT_PATH ]; then
    echo "PROJECT_PATH environment variable is empty"
    exit 1
fi

for f in $PROJECT_PATH/*; do
    if [ -d "$f" ]; then
        echo "--------------------------------------------------------------------------------"
        echo "-> repository name: $(basename $f)"
        cd $f
        BRANCH=$(git branch --show-current)
        echo "-> branch $BRANCH"
        echo "-> git fetch"
        git fetch --prune
        echo "-> git stash"
        git stash
        echo "-> git checkout master"
        git checkout master
        echo "-> git pull"
        git pull
        echo "-> git checkout $BRANCH"
        git checkout $BRANCH
        echo "-> git stash pop"
        git stash pop
        cd ..
    fi
done
