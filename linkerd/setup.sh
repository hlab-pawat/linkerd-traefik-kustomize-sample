linkerd check --pre
linkerd install | kubectl apply -f -
linkerd viz install | kubectl apply -f -
linkerd jaeger install | kubectl apply -f -
curl -sL buoyant.cloud/install | sh
linkerd buoyant install | kubectl apply -f -