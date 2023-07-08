### What wrong with K8s cluster, inspect the system and fix it.
<details>
<summary>Hint</summary>

- The kube-apiserver pod not running
- use `crictl ps`{{exec}} to show running container
- inspect the log under `/var/log/pods/` to find the cause and fix it

</details>