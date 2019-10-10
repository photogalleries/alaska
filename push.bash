#!/bin/bash -e

cd $(dirname ${BASH_SOURCE[0]})
cd ../_site

git init
git remote add origin git@github.com:photogalleries/animals.git
git checkout -b gh-pages

touch .nojekyll
touch .gitignore
echo ".DS_Store" >> .gitignore
echo "Icon?" >> .gitignore
touch CNAME
echo "rmodrak.com" >> CNAME
git add .gitignore
git add -A
git commit -m "Added website"
git push -f origin gh-pages

