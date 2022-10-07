#!/bin/sh

set -e

git clone -b gh-pages git@github.com:rh-reborn/gba-and-ds-rom-hacking-guide.git _book_deploy
cd _book_deploy
cp -r ../_book/* ./
git add --all *
git commit -m"feat: update the book" || true
git push -q origin gh-pages
