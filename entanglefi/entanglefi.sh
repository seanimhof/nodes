#!/bin/bash

read -p "Password for Key: " PW
read -s -p "Name for the Key: " KEY_NAMEe

git clone https://github.com/Entangle-Protocol/entangle-blockchain
cd entangle-blockchain

make install
sh init_key.sh $PW
sh get_snapshot.sh
sh run_node.sh

entangled keys unsafe-export-eth-key $KEY_NAME
