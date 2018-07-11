#!/bin/zsh
set -o errexit
./helm/set-up-helm.sh
./hello-world/set-up-nginx.sh
