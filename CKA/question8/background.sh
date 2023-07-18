#!bin/bash
wget https://raw.githubusercontent.com/lehuyhuan/killercoda/main/CKA/question8/init.yaml -O /tmp/init.yaml
kubectl apply -f /tmp/init.yaml
mkdir -p /Volume/data
touch /tmp/.pre_done_8