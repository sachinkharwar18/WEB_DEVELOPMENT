#!/bin/bash

while true
do
    git add .

    if ! git diff --cached --quiet; then
        git commit -m "Auto Update $(date '+%Y-%m-%d %H:%M:%S')"
        git push origin main
    fi

    sleep 5
done

