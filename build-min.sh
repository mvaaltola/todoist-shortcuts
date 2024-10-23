#!/usr/bin/env bash

set -e

cat src/mousetrap.js > build.js
cat src/todoist-shortcuts.js >> build.js

node_modules/uglify-js/bin/uglifyjs build.js > build-min.js
rm build.js
