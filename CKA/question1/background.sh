#!bin/bash
kubectl label nodes controlplane disk=ssd
touch /tmp/.pre_done_1