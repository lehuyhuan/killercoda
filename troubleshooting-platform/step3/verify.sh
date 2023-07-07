#!/bin/bash
if kubectl get pods -o jsonpath='{.items[?(@.metadata.name=="pod3")].spec.containers[*].image}' | grep "httpd redis"; then
    if kubectl get pods -o jsonpath='{.items[?(@.metadata.name=="pod3")].spec.containers[*].name}' | grep "web data"; then
        exit 0
    fi
fi
exit 1