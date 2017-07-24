#!/bin/bash

vault="$HOME/vault"
keystore="$vault/keystore"
aeskey="$keystore/aeskey.key"

ps_init_key () {
    [ -d $keystore ] || mkdir -p $keystore
    [ -f $aeskey ] || openssl rand 2048 -out $aeskey
}

ps_encrypt () {
    [ -f $aeskey ] || ps_init_key
    echo -n $1 | openssl enc -aes-256-cbc -kfile $aeskey -nosalt -a 
}

ps_decrypt () {
    echo $1 | openssl enc -d -aes-256-cbc -kfile $aeskey -nosalt -a 
}

ps_init_key