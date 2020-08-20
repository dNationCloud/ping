* Ping selected IPs every 15s
* Show graph
* For installation see [README.md](https://git.ifne.eu/infra/docker/blob/master/web/vyznanie.sk/README.md) and follow:
```bash
# Look for "targets:"
vim prometheus/prometheus.yaml

chmod a=rwx prometheus/prometheus
docker-compose up -d
```

* [Prometheus](http://localhost:9090/targets) (needs to be enabled in docker-compose.yml)
* [Blackbox](http://localhost:9115/) (needs to be enabled in docker-compose.yml)
* [Grafana](http://localhost:3000/): admin ahReTjVYWv0EQ


## Installation Notes
```bash
useradd -s /bin/bash -m -g users -G docker docker
chmod g+w /home/docker
apt install certbot python-certbot-apache
certbot certonly --apache -m admin@ifne.eu -d ping-deploy.ifne.eu -d www.ping-deploy.ifne.eu

cd /etc/apache2/sites-available
ln -s /home/docker/docker/ping/apache/ping-deploy.ifne.eu.conf
a2ensite ping-deploy.ifne.eu.conf
apache2ctl configtest
service apache2 reload
```
