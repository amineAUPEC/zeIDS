#!/bin/bash

git config --global user.name "$2 $3"
git config --global user.email "$4"


#git remote add origin https://github.com/amineAUPEC/zeIDS.git
git add -all
git commit -m "$1"

# git commit -a "$1"

git push -u origin main --force


# git remote set-url origin https://github.com/amineAUPEC/zeIDS.git
# git push -u origin --all --force
# git push origin --tags --force




#before

# git commit -a "$1"
# git push
