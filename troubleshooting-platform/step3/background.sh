#!bin/bash
sed -i 's/listen-client-urls=https:\/\/127.0.0.1:2379,/listen-client-urls=/' /etc/kubernetes/manifests/etcd.yaml
sleep 15
touch /tmp/.pre_done_3