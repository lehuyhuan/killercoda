1. Create one pod named `pod1` with image `nginx:alpine`

2. Create one pod named `pod2` with image `nginx:alpine` and has labels `service=web` and `severity=high`

3. Create one pod named `pod3` has 2 containers
	1st container named `web` with image `httpd`
	2nd container named `data` with image `redis`

4. Create one pod named `pod4` with image `busybox` and has lables `service=test`. the pod should perform `sleep 4800` when initialized
