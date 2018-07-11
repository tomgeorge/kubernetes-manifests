#!/bin/zsh
set -o errexit
./helm/set-up-helm.sh
./nginx-ingress/set-up-nginx.sh
