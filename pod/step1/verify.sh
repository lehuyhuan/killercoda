#!/bin/bash
if kubectl get pods -o jsonpath='{.items[?(@.metadata.name=="pod1")].spec.containers[*].image}' | grep "nginx:alpine" ; then
  exit 0
fi
  exit 1
