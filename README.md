### Prerequisite
1. kubectl
2. kustomize
3. helm

### Setup Linkerd
```
bash likerd/setup.sh
bash traefik/setup.sh
```

### Expose Linkerd dashboard
```
# Open dashbaord
linkerd viz dashboard &

# If dashboard close unexpectedly
netstat -vanp tcp | grep <port>
kill -9 <pid>
```