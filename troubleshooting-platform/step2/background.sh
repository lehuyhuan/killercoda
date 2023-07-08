#!bin/bash
sed -i 's/staticPodPath: \/etc\/kubernetes\/manifests/staticPodPath: WRONG-PATH-DIR/' /var/lib/kubelet/config.yaml
systemctl restart kubelet
sleep 30
touch /tmp/.pre_done_2