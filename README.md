![alt text](images/dNPing_logo.png "dNation Ping logo")
-
dNation Ping is a transparent tool for pinging selected IP addresses or domain names in set intervals with results displayed on graph.

![alt text](images/ping_grafana_screenshot.png "dNation Ping logo")

## Getting Started 
### Prerequisites

* [Docker](https://www.docker.com/)
* [Docker-compose](https://docs.docker.com/compose/) **>= *v3.0***

### Installation Notes

after you create a clone of this repository on your machine

```bash
$ chmod a=rwx prometheus/prometheus
$ docker-compose up -d
```

## Usage
**After installing dNation Ping:**

> Open (http://localhost:3001/) in your web browser, this will open [Grafana](http://localhost:3000/) GUI

> Username : *admin* 

> Password : *admin*

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

```bash
$ docker-compose down
$ vim prometheus/prometheus.yaml #look for -targets:
$ docker-compose up -d
```

## Built With

* [Prometheus](https://prometheus.io/)
* [Blackbox-exporter](https://github.com/prometheus/blackbox_exporter/blob/master/README.md)
* [Grafana](https://grafana.com/)














