#!/bin/bash -e

rm -rf lib build dist
/usr/bin/env yarn tsc --project tsconfig.build.json
cp src/*.html lib
/usr/bin/env node lib
yarn scutage build/index.html
cp build/_redirects dist/_redirects
