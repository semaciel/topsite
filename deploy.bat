@echo off
title Deploy Script
@echo --Starting...
echo %cd%
::@echo --Del nodemodules
::del node_modules /q
::cmd /c npm i
echo %cd%
@echo --npm run build
cmd /c npm run build
@echo --navigate into the build output directory
cd dist
echo %cd%
git init
git add -A
@echo All complete
git commit -m 'deploy'
@echo deploy message
git push -f git@github.com:semaciel/topsite.git main:gh-pages
cd ..
echo %cd%
@echo Logged time = %time% %date%
