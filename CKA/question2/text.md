<br>

### Task

There are some deployments in namespace `team_app2` and need to be security hardening, so create the network policy as below

Only pods from namespace `team_app1` with label `app=frontend-web` allowed to connect to Pods of namespace `team_app2` which listening on port tcp 5000

*Note: The pods may need some times to be ready*