#!/bin/bash

NOW=$(date +"%d-%m-%Y %T")

echo -e "\e[1;35mBuild site\e[0m"

cd blog
hugo > /dev/null 2>&1

echo -e "\e[1;35mCommit to the blog repository...\e[0m"

git add .
git commit -m "Update : $NOW" > /dev/null 2>&1
git push origin main > /dev/null 2>&1

echo -e "\e[1;35mCommit to the github.io repository...\e[0m"

cd public
git add .
git commit -m "Update : $NOW" > /dev/null 2>&1
git push origin main > /dev/null 2>&1

echo -e "\e[1;35mSuccessfully committed\e[0m"