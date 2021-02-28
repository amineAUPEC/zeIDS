#!/bin/bash


SCRIPTPATH='.'

export ANSIBLE_project="ids"
export ANSIBLE_INVENTORY="$SCRIPTPATH/$ANSIBLE_project/inventory"


echo "SCRIPTPATH is $SCRIPTPATH"
echo "ANSIBLE_INVENTORY is $ANSIBLE_INVENTORY"

ansible-playbook "$@"
