#!/usr/bin/bash

read -p "Username: " USERNAME

read -s -p "Password for $USERNAME: " PASSWORD
echo

sudo useradd -m $USERNAME

echo "$USERNAME:$PASSWORD" | sudo chpasswd

sudo usermod -aG sudo,docker $USERNAME
