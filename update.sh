#!/bin/bash

if [ -d /demo/rhocp-demo-contents ]; then

cd /demo/rhocp-demo-contents
git pull

else 

git clone https://github.com/yuu-ymt/rhocp-demo-contents.git /demo

fi


tail -f /dev/null



