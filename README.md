![alt text](https://cdn.ifne.eu/public/icons/dnation_ping_long.png "dNation Ping logo")
-

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dnationcloud)](https://artifacthub.io/packages/search?repo=dnationcloud)

dNation Ping detects network connection problems by measuring ping response times of selected servers every 15 seconds. Runs inside Kubernetes cluster or on a single machine (within a docker container).

![alt text](images/ping_grafana_screenshot.png "dNation Ping GUI")

# Installation

For more information about dNation Ping deployment in docker, please read [dNation Ping in Docker](docker/README.md).

For more information about dNation Ping Helm Chart, please read [dNation Ping Helm Chart](chart/README.md).

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
See <a href="https://dnation.cloud/contact/" target="_blank" rel="noopener">dNation Contact Page</a>.
