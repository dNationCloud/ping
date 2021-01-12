# Prerequisites
* [Docker](https://www.docker.com/)
* [Docker-compose](https://docs.docker.com/compose/)
```bash
# Installs also Docker (as a dependency)
sudo apt install docker-compose
```

* User is a member of `docker` group
```bash
# Is user already a member?
groups | grep docker
... docker

# If not, add him
sudo adduser $USER docker

# Launch new shell, so group change above takes effect
# Alternatively, logout and login 
su - $USER
```

# Installation
```bash
git clone https://github.com/dNationCloud/ping.git
chmod a=rwx ping/docker/prometheus/prometheus
```
# Changing defauls (optional)
* [docker/.env](docker/.env) - website access information
* [docker/prometheus/targets.json](docker/prometheus/targets.json) - ping targets
  * For measuring a home connection, include also your router (usually 192.168.1.1) as a ping target, useful for detection of problems with router itself (should be always reachable)
```bash
# After editing
docker-compose restart prometheus
docker-compose logs prometheus
ping-prometheus | level=info ts=2021-01-10T22:30:56.937Z caller=main.go:918 msg="Completed loading of configuration file" filename=/etc/prometheus.yaml
```

# Launch
```bash
# Launch
cd ping/docker
docker-compose up -d

# Debug
docker-compose logs | grep ERROR
```

# Getting started
After installation:
* http://localhost:3001/
* Username: `admin`
* Password : `pass`
