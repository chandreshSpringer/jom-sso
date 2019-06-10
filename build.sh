#!/usr/bin/env bash
set -e
echo "Task-1 - Remove node modules"
rm -rf node_modules
echo "Task 2 - Install vue cli"
npm install -g vue-cli
# echo "Task 3 - Install serve"
# npm install -g serve
echo "Task 4- Install node modules........."
npm install
echo "Task 5- Remove dist"
rm -rf dist
echo "Task 6- Run Build"
npm run build
echo "Task 7- Run unit tests not running currently"
#npm run test:unit
echo "Task 9- Give node modules permission"
chmod -R 700 node_modules
echo "Task 9- Give node modules permission "
chmod -R 700 dist
