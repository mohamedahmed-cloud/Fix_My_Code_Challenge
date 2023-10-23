#!/usr/bin/env bash

pycodestyle $1
git add --chmod +x $1
if [ $? -ne 1 ];then
	git add *
	git commit -m "$1"
	git push
fi
