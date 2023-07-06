#!/bin/bash
if kubectl get pods pod5 -o jsonpath='{.spec.volumes[?(@.name=="local-dir")].hostPath.path}' | grep "\/data"; then
    if kubectl get pods pod5 -o jsonpath='{.spec.containers[?(@.image=="nginx")].volumeMounts[?(@.name=="local-dir")].mountPath}' | grep "\/usr\/share\/nginx\/html"; then
        exit 0
    fi
fi
exit 1