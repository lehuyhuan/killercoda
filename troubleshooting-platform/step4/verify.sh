#!/bin/bash
if kubectl get pod pod4 -o jsonpath='{.spec.containers[?(@.image=="nginx:alpine")].env[?(@.name=="COLOR")].value}' | grep "BLUE" ; then
  exit 0
fi
  exit 1