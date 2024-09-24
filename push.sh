#!/bin/bash

git add .

if [ -n "$1" ]; then
    git commit -m "$1"
else
    git commit -m "commit"
fi

echo -n "是否确认push？[y/*]："

read -n1 input

echo ""

if [ "$input" = "y" ]; then
    git push -u origin "master"
else
    echo "取消push，文件已commit"
fi

