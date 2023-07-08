### What wrong with K8s cluster again, inspect the system and fix it.
<details>
<summary>Hint</summary>

Try to check the log of of kube-apiserver container under `/var/log/pods/` to find the cause.

</details>

<br>

<details>
<summary>Solution</summary>

kube-apiserver connect to etcd using loopback interface, but etcd is listening on interface enp1s0. 
Update the `/etc/kubernetes/manifests/kube-apiserver.yaml` or `/etc/kubernetes/manifests/etcd.yaml` to ensure kube-adiserver can establish the connection to etcd.

```
etc.yaml
...
--listen-client-urls=https://127.0.0.1:2379,...
...
```
<br>

```
kube-apiserver.yaml
...
--etcd-servers=https://127.0.0.1:2379
...
```

</details>