#!/bin/sh -ex

# Ensure that eslint passes.
./eslint.sh
# Ensure that addons-linter passes.
addons-linter src/

rm -f todoist-shortcuts.zip
cd src
zip ../todoist-shortcuts.zip manifest.json *.js *.css *.html *.png
cd ../
