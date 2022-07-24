#!/bin/bash

hexo clean
hexo g

cp -r old public/

git add public/*

git commit -m "📦 Struct: Push to Server"
git push server --force

ssh catrol@catrol.cn -t "cd /www/wwwroot/docs.catrol.cn/; sudo git pull"

git rm -r public

git commit -m "📦 Struct: Cleaned Public"
git push origin --force
git push home-server --force

sleep 3
