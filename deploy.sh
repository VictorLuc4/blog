#!/bin/bash

NOW=$(date +"%d-%m-%Y %T")

echo "Build site"

hugo > /dev/null 2>&1

echo -e "Commit to the blog repository..."

git add .
git commit -m "Update : $NOW" > /dev/null 2>&1
git push origin main > /dev/null 2>&1

echo -e "Commit to the github.io repository..."

cd public
git add .
git commit -m "Update : $NOW" > /dev/null 2>&1
git push origin main 

echo -e "Successfully committed"