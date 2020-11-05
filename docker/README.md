![alt text](https://cdn.ifne.eu/public/icons/dnation_ping_long.png "dNation Ping logo")
-

## Installation
Prerequisites

* [Docker](https://www.docker.com/)
* [Docker-compose](https://docs.docker.com/compose/) **>= *v3.0***

Install dNation-Ping

```bash
umask 0022
git clone https://github.com/dNationCloud/ping.git
```

* Add user to group `docker`, logout/login if necessary

```bash
# Is used in docker group?
groups | grep docker
... docker

# Docker-Compose
chmod a=rwx docker/prometheus/prometheus
docker-compose up -d -f /docker

# Launch
cd ping/docker
chmod a=rwx prometheus/prometheus
docker-compose up -d

# Debugging
docker-compose logs | grep ERROR
```

## Usage
After installation:
* http://localhost:3001/
* Username: `admin`
* Password : `pass`

## Modifications

| env variable | what it represents |
| :--- | :--- |
| ADMIN_USER | grafana UI username |
| ADMIN_PASSWORD | grafana UI password |
| PING_PORT | default grafana UI port |

* **Edit pinging targets**

    - Edit targets in /docker/prometheus/targets.json file *(don't use vim file editor)*
    - Save file
    - Applied changes should appear in GUI within 5 minutes period
    
## Built With

* [Prometheus](https://prometheus.io/)
* [Blackbox-exporter](https://github.com/prometheus/blackbox_exporter/blob/master/README.md)
* [Grafana](https://grafana.com/)
