#!/bin/bash

set -e -o pipefail

# geoip

cd sing-geoip/rule-set
git init
git config --local user.email "github-action@users.noreply.github.com"
git config --local user.name "GitHub Action"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/lyc8503/sing-box-rules.git
git branch -M rule-set-geoip
git add .
git commit -m "Update rule-set"
git push -f origin rule-set-geoip

cd -
# sing-geosite

cd sing-geosite/rule-set
git init
git config --local user.email "github-action@users.noreply.github.com"
git config --local user.name "GitHub Action"
git remote add origin https://github-action:$GITHUB_TOKEN@github.com/lyc8503/sing-box-rules.git
git branch -M rule-set-geosite
git add .
git commit -m "Update rule-set"
git push -f origin rule-set-geosite
