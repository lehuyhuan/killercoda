#!bin/bash
wget https://raw.githubusercontent.com/lehuyhuan/killercoda/main/CKA/question2/init.yaml -O /tmp/init.yaml
kubectl apply -f /tmp/init.yaml
touch /tmp/.pre_done_2