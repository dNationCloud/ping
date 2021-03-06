# Helpers

A set of scripts and configuration files which helps to simplify local development.

## Local development using KinD (Kubernetes in Docker)

Prerequisites

* [Kind](https://kind.sigs.k8s.io/)
* [Docker](https://www.docker.com/)
* [Helm3](https://helm.sh/)
* [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Build 

HELM Linter
```
helm lint chart
```

Create KinD cluster
```bash
kind create cluster --config helpers/ping_kind_config.yaml --image kindest/node:v1.19.1
```

Install dNation Ping

```bash
# Install dNation Ping Helm chart
helm install dnation-ping ./chart -f chart/values.yaml 
```
