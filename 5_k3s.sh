#!/bin/bash

curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
kubectl get nodes
kubectl cluster-info
