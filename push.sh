#!/bin/bash

git config --global user.name "Amine ABDOUL-AZID"
git config --global user.email "amine.abdoul-azid@etu.u-pec.fr"


#git remote add origin https://github.com/amineAUPEC/zeIDS.git
git add --all
git commit -m "$1"

# git commit -a "$1"

git push -u origin master --force


# git remote set-url origin https://github.com/amineAUPEC/zeIDS.git
# git push -u origin --all --force
# git push origin --tags --force




#before

# git commit -a "$1"
# git push
