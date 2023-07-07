Create one pod named `pod5` with image `nginx`.
- Creat `index.html` under `/data` with below cmd
```
# mkdir /data
# echo "Great job! you have completed to mount local dir to pod" >> /data/index.html
```
- The pod should have one hostPath volume named `local-dir` with path `/data`
- the mountPath of container should be `/usr/share/nginx/html`