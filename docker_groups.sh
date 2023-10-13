#!/bin/bash
sudo useradd --system --uid 998 --gid 100 qbittorrent -c "qBittorrentvpn docker container system user"
sudo useradd --system --uid 997 --gid 100 jellyfin -c "jellyfin docker container system user"
echo "May require system restart to avoid issues"
