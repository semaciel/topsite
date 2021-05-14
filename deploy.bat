@echo off
title Deploy Script
@echo >>> Starting...
@echo >>> Del nodemodules
del node_modules /q
npm i
@echo >>> npm run build
npm run build
@echo >>> navigate into the build output directory
cd dist
git init
git add -A
git commit -m 'deploy %date%'
git push -f git@github.com:semaciel/topsite.git main:gh-pages
cd -
@echo Logged time = %time% %date%
