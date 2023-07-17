#!bin/bash
#sed -i 's/staticPodPath: WRONG-PATH-DIR/staticPodPath: \/etc\/kubernetes\/manifests/' /var/lib/kubelet/config.yaml
sed -i 's/staticPodPath: \/etc\/kubernetes\/manifests/staticPodPath: WRONG-PATH-DIR/' /var/lib/kubelet/config.yaml
systemctl restart kubelet
sleep 15
touch /tmp/.pre_done_2