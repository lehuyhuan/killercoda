#!/bin/bash
image=`kubectl get pods -o jsonpath='{.items[?(@.metadata.name=="pod3")].spec.containers[*].image}'`
name=`kubectl get pods -o jsonpath='{.items[?(@.metadata.name=="pod3")].spec.containers[*].name}'`
[[ $image == "httpd redis" ]] && [[ $name == "web data" ]] && exit 0
exit 1