#!/bin/bash
set -e

export PATH="$PWD/node_modules/.bin:$PATH"

#npm install
npm test

rm -rf dist/

mkdir dist/
mkdir dist/js
mkdir dist/css

cp src/index.html dist/
cp src/robots.txt dist/
cp src/CNAME dist/

cp -r src/data dist/
cp -r src/css/* dist/css/
cp -r src/fonts dist/

#echo "Running browserify..."
#browserify src/js/view.js -o dist/js/bundle.js