#!/bin/bash
sudo useradd --system --uid 998 --gid 100 qbittorrent -c "qBittorrentvpn docker container system user"
sudo useradd --system --uid 997 --gid 100 jellyfin -c "jellyfin docker container system user"
sudo useradd --system --uid 996 --gid 100 sqlcontainer -c "sql docker container system user"
sudo useradd --system --uid 995 --gid 100 grafanacontainer -c "grafana docker container system user"
sudo useradd --system --uid 994 --gid 100 fireflycontainer -c "firefly iii docker container system user"
echo "May require system restart to avoid issues"
