![alt text](https://cdn.ifne.eu/public/icons/dnation_ping_long.png "dNation Ping logo")
-

Helm chart for [dNation Ping](https://github.com/dNationCloud/kubernetes-monitoring) deployment is built with:

* [grafana](https://github.com/grafana/helm-charts/tree/main/charts/grafana)
* [prometheus](https://github.com/prometheus-community/helm-charts/tree/main/charts/prometheus)
* [prometheus-blackbox-exporter](https://github.com/prometheus-community/helm-charts/tree/main/charts/prometheus-blackbox-exporter)

# Installation

Prerequisites
* [Helm3](https://helm.sh/)

dNation Ping Helm Chart is hosted in the [dNation helm repository](https://artifacthub.io/packages/search?repo=dnationcloud).

```bash
# Add dNation helm repository
helm repo add dnationcloud https://nexus.ifne.eu/repository/ifne-helm-public/
helm repo update

# Install dNation Ping
helm install dnation-ping dnationcloud/dnation-ping
```

test test 
