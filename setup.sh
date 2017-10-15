#!/bin/bash

# This script copies a public key file to the remote host and ensures that it has the right permissions.

if [ $# -ne 2 ]; then
    echo "Usage $0 <hostame> <path to ansible public key>"
    exit 1
fi

if [ ! -f $2 ]; then
    echo "Error: Ansible public key not found: $2"
    exit 10
fi

FILETYPE=`file $2`
if [[ ! $FILETYPE == *"OpenSSH RSA public key"* ]]; then
    echo "Error: Not a public key file: $2"
    exit 11
fi 


HOST=$1
ssh pi@$HOST 'mkdir -p ~/.ssh && chmod 700 ~/.ssh'
scp $2 pi@$HOST:~/.ssh/authorized_keys
ssh pi@$HOST 'chmod 600 ~/.ssh/authorized_keys'
