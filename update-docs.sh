#!/usr/bin/env bash

git stash && \
git checkout gh-pages && \
git rebase master && \
rm -rf docs && \
docco lib/*.coffee && \
git add . && \
git commit -a -m 'Generate documentation' && \
git push -f origin gh-pages && \
git checkout master && \
git stash pop && \
echo "Done: Generated documentation"
