#!/bin/bash

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl get pods -n argocd

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
kubectl get svc -n argocd argocd-server
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d && echo

kubectl create secret docker-registry ghcr-secret \
  --docker-server=ghcr.io \
  --docker-username=martapmerida \
  --docker-password=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 \
  --docker-email=martapmerida@gmail.com \
  --namespace=default