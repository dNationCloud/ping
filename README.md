![alt text](images/dNPing_logo.png "dNation Ping logo")
-
dNation Ping is a transparent tool for pinging selected IP addresses or domain names in set intervals with results displayed on graph.

![alt text](images/ping_grafana_screenshot.png "dNation Ping GUI")

## Getting Started 
### Prerequisites

* [Docker](https://www.docker.com/)
* [Docker-compose](https://docs.docker.com/compose/) **>= *v3.0*** / [Kubernetes](https://kubernetes.io/)

### Installation Notes

after you create a clone of this repository on your machine

| Docker-Compose| Kubernetes |
| :--- | :--- |
| `$ chmod a=rwx docker/prometheus/prometheus` | `$ helm install dnation-ping ./k8s` |
| `$ docker-compose up -d -f /docker` |



## Usage
**After installing dNation Ping:**

> Open (http://localhost:3001/) in your web browser

> Grafana GUI will load

> Username : *admin* 

> Password : *pass*

## Modifications
### docker-compose

| env variable | what it represents |
| :--- | :--- |
| ADMIN_USER | grafana UI username |
| ADMIN_PASSWORD | grafana UI password |
| PING_PORT | default grafana UI port |

* **Edit pinging targets**

    - Edit targets in /docker/prometheus/targets.json file *(don't use vim file editor)*
    - Save file
    - Applied changes should appear in GUI within 5 minutes period
    
### kubernetes

* **See k8s/values.yaml file for possible modifications**    
    
### More Info
**Kubernetes related**

 - *nodePort is used to expose Grafana UI (30071) and Prometheus UI (30909)*

## Built With

* [Prometheus](https://prometheus.io/)
* [Blackbox-exporter](https://github.com/prometheus/blackbox_exporter/blob/master/README.md)
* [Grafana](https://grafana.com/)














