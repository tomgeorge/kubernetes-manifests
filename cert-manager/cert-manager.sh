#!/bin/zsh
helm install \
    --name cert-manager \
    --namespace kube-system \
    stable/cert-manager
kubectl apply -f staging-issuer.yml
