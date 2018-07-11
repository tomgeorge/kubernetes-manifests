#!/bin/zsh

cd helm
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
chmod +x get_helm.sh
./get_helm.sh
kubectl create serviceaccount tiller --namespace kube-system
kubectl apply -f tiller-cluster-role-binding.yml
helm init --service-account tiller --upgrade
cd ..
