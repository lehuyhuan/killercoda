#!bin/bash
kubectl create ns team_app1
kubectl create ns team_app2

kubectl -n team_app1 run app-checker --image busybox:stable -- sleep 60m

cat <<EOF | kubectl apply -f
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: api
  name: api
  namespace: team_app2
spec:
  replicas: 1
  selector:
    matchLabels:
      app: api
  strategy: {}
  template:
    metadata:
      labels:
        app: api
    spec:
      containers:
      - image: lehuyhuan/simple-api:python
        name: api
EOF

cat <<EOF | kubectl apply -f
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: redis
  name: redis
  namespace: team_app2
spec:
  replicas: 1
  selector:
    matchLabels:
      app: redis
  strategy: {}
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - image: redis:6.0.20-alpine3.18
        name: redis
EOF

kubectl expose deployment api --name api --port 5000 --target-port 5000
kubectl expose deployment api --name redis --port 6379 --target-port 6379
touch /tmp/.pre_done_2