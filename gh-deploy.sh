#!/bin/bash

git branch -D gh-pages
git checkout -b gh-pages
rm -rf build
gulp build --prod
git add -f build
git commit -m "Build site"
git push origin `git subtree split --prefix build gh-pages`:gh-pages --force
git checkout -
