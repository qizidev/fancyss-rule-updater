#!/bin/bash

CurrentDate=$(date +%Y-%m-%d)
CurrentDir=$(dirname $(readlink -f "$0"))

cd $CurrentDir/rules/auto_update
./update_rules.sh >/dev/null

git add $CurrentDir
git commit -m "Auto Update $CurrentDate"
git push -q
