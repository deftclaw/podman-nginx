#!/bin/bash

podman run --name=syscom -p 8180:80 -v $(pwd)/syscom:/usr/local/apache2/htdocs:Z -d docker.io/library/httpd
podman run --name=sysorg -p 8181:80 -v $(pwd)/sysorg:/usr/local/apache2/htdocs:Z -d docker.io/library/httpd
# sudo sysctl net.ipv4.ip_unprivileged_port_start=80
podman run --name=nginx -p 80:80 -v $(pwd)/nginx:/etc/nginx/conf.d:Z -d docker.io/library/nginx
