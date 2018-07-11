#!/bin/zsh
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash
kubectl create serviceaccount tiller --namespace kube-system
kubectl apply -f tiller-cluster-role-binding.yml
helm init --service-account tiller --upgrade
