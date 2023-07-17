#!/bin/bash
nodeName=$(kubectl get pod app-cache -o jsonpath='{.spec.nodeName}')
if [ "$nodeName" = "controlplane" ]
then
    echo "PASS"
    exit 0
fi
echo "FAILED"
exit 1
