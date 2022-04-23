#!/bin/bash
hexo clean
hexo g
cp -r old public/

sleep 1

git add .
git commit -m "📦 Struct: Hexo Generate."

sleep 1

git push origin
git push server

sleep 1
