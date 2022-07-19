#!/bin/bash

hexo clean
hexo g

cp -r old public/

git add public/*

git commit -m "📦 Struct: Push to Server"
git push server --force

git rm -r public

git commit -m "📦 Struct: Cleaned Public"
git push origin --force
git push home-server --force

sleep 3
