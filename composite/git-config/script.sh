#!/usr/bin/env bash
VAR1=$1
mkdir -p /home/runner/.ssh
echo "$VAR1" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
echo -e "Host github.com\n\tHostName github.com\n\tPreferredAuthentications publickey\n\tIdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
chmod 600 ~/.ssh/config
ssh-keygen -F github.com || ssh-keyscan github.com >>~/.ssh/known_hosts
