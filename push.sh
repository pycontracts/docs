#!/bin/bash
cp -r site site_live
cd site_live
git init
git remote add origin https://github.com/pycontracts/pycontractshelp.github.io.git
git add *
git commit -a -m "Doc Update"
git push -f origin master