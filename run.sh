#!/bin/bash

oc new-project gitlab
oc apply -f https://github.com/jetstack/cert-manager/releases/download/v1.7.1/cert-manager.yaml
oc apply -f ./gitlab-runner-subscription.yaml
oc apply -f ./gitlab-runner-secret.yaml
oc create configmap config-toml --from-file config.toml="config.toml"
echo 'waiting 3min for operator to install...'
sleep 180
oc apply -f ./gitlab-runner.yaml
oc adm policy add-scc-to-user anyuid -z gitlab-runner-sa -n gitlab
oc adm policy add-scc-to-user privileged -z gitlab-runner-sa -n gitlab
