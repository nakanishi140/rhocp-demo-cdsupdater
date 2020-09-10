#!/bin/bash

if [ -d /demo/contents ]; then

cd /demo/contents
git pull

else 

git clone https://github.com/nakanishi140/rhocp-demo-contents.git /demo/contents

fi




