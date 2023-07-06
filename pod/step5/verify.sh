#!/bin/bash
datapath=`kubectl get pods pod5 -o jsonpath='{.spec.volumes[?(@.name=="local-dir")].hostPath.path}'`
mountpath=`kubectl get pods pod5 -o jsonpath='{.spec.containers[?(@.image=="nginx")].volumeMounts[?(@.name=="local-dir")].mountPath}'`
[[ $datapath == "/data" ]] && [[ $mountpath == "/usr/share/nginx/html" ]] && exit 0
exit 1