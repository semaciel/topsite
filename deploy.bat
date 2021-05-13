@echo off
title Deploy Script
@echo Starting...
@echo # build
del node_modules /q
npm i
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:semaciel/topsite.git main:gh-pages
cd -
