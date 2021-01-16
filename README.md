![alt text](https://cdn.ifne.eu/public/icons/dnation_ping_long.png "dNation Ping logo")
-

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dnationcloud)](https://artifacthub.io/packages/search?repo=dnationcloud)

dNation Ping detects network connection problems by measuring ping response times of selected servers every 15 seconds. Runs inside Kubernetes cluster or on a single machine (within a docker container).

![alt text](images/ping_grafana_screenshot.png "dNation Ping GUI")

# Installation

For more information about dNation Ping deployment in docker, please read [dNation Ping in Docker](docker/README.md).

For more information about dNation Ping Helm Chart, please read [dNation Ping Helm Chart](chart/README.md).

# Understanding measured values
Image above contains 2 different types of measured values at `2021-01-16 08:54:15` timestamp:
1. `192.168.100.1: 4 ms`: last pong reply from `192.168.100.1` was received after `4 ms`; it happened at or before the timestamp mentioned above
2. `1.1.1.1: 0 ms`: no pong reply (to last ping request) was received from `1.1.1.1` within 9.50 seconds; timeout ran out at or before the timestamp mentioned above

Under certain circumstances, you may also observe `1.1.1.1:` (no value, a gap) case. This happens when Prometheus's time is not synchronized with system clock, e.g. when you run using Virtual Machine and use "restore from snapshot" feature which causes system clock to "jump" ahead. In such case you can restart containers to fix this issue:
```
cd ping/docker
docker-compose down
docker-compose up -d
```

# Debugging

# Contribution guidelines

If you want to contribute, please read following:
1. [Contribution Guidelines](CONTRIBUTING.md)
1. [Code of Conduct](CODE_OF_CONDUCT.md)
1. [How To](helpers/README.md) simplify your local development

# Credits

Following projects are used (alphabetical order):
* [Blackbox Exporter](https://github.com/prometheus/blackbox_exporter/) - for ICMP (ping) probing
* [Docker](https://www.docker.com/) - for building images
* [Grafana](https://grafana.com/) - for metrics visualization
* [Helm](https://helm.sh/) package manager - for easy installation into Kubernetes environment
* [Prometheus](https://prometheus.io/) - for metrics collection

# Contact
See [dNation Contact Page](https://dnation.cloud/contact/).
