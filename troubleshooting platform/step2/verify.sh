#!/bin/bash
if kubectl get pods -l service=web,severity=high -o jsonpath='{.items[?(@.metadata.name=="pod2")].spec.containers[*].image}' | grep "nginx:alpine" ; then
  exit 0
fi
  exit 1
