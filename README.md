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
| `$ chmod a=rwx docker/prometheus/prometheus` | `$ kubectl create -f /k8s` |
| `$ docker-compose up -d -f /docker` |



## Usage
**After installing dNation Ping:**

> Open (http://localhost:3001/) in your web browser

> Grafana GUI will load

> Username : *admin* 

> Password : *pass*

### Modifications
* **If you want to change default password**

```bash
$ docker-compose down
$ export ADMIN_PASSWORD=your_password
$ docker-compose up -d
```

* **If you want to change default port (3001)**

```bash
$ docker-compose down
$ export PING_PORT=your_port
$ docker-compose up -d
```

* **If you want to add or remove pinging targets**

    - (*Docker-Compose*) Edit targets in /docker/prometheus/targets.json file *(don't use vim file editor)*
    - (*Kubernetes*) Edit targets in /k8s/prometheus-targets.yml
    - Save file
    - Applied changes should appear in GUI within 5 minutes period
    
### More Info
**Kubernetes related**

 - *nodePort is used to expose Grafana UI (3001) and Prometheus UI (3002)*

## Built With

* [Prometheus](https://prometheus.io/)
* [Blackbox-exporter](https://github.com/prometheus/blackbox_exporter/blob/master/README.md)
* [Grafana](https://grafana.com/)














