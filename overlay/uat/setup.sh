kubectl apply -k ./namespace
kubectl apply -k ./emojivoto-web
kubectl apply -k ./emojivoto-emoji
kubectl apply -k ./emojivoto-voting
kubectl apply -k ./emojivoto-bot

helm install traefik traefik/traefik --namespace uat-emojivoto \
--set kubernetes.ingressClass=traefik \
--set rbac.enabled=true \
--set fullnameOverride=uat-traefik \
--set kubernetes.ingressEndpoint.useDefaultPublishedService=true \
--values ../../base/gateway/traefik-test-values.yaml
kubectl apply -k ./gateway
