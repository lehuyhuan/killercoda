#!bin/bash
sed -i 's/etcd-cafile=\/etc\/kubernetes\/pki\/etcd\/ca.crt/etcd-cafile=\/etc\/kubernetes\/pki\/etcd\/etcdCA.crt/' /etc/kubernetes/manifests/kube-apiserver.yaml
touch /tmp/.pre_done_1
