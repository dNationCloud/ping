# Prerequisites
Following packages have to be installed into your Kubernetes environment:
* [Helm](https://helm.sh/docs/intro/install/)

# Installation
```bash
# Add dNation helm repository
helm repo add dnationcloud https://dnationcloud.github.io/helm-hub/
helm repo update

# Install dNation Ping
helm install dnation-ping dnationcloud/dnation-ping
```
* dNation Ping Helm Chart is hosted in the [dNation Helm Repository](https://artifacthub.io/packages/search?repo=dnationcloud).

# Getting started
* Expose Grafana (standalone instance installed via helm command above)
```
kubectl port-forward --address 0.0.0.0 svc/dnation-ping-grafana 3000:80
```
* Access Grafana: `http://<ClusterIP>:3000/`
* Click `Ping` dashboard
* If you want to set the `Ping` dashboard as a home dashboard, follow [instructions](https://grafana.com/docs/grafana/latest/administration/change-home-dashboard/#set-the-default-dashboard-through-preferences)
