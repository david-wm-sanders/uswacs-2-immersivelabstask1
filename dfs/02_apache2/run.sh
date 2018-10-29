#!/usr/bin/env bash
sudo docker run --name 02_apache2 --detach --publish 8080:80 02_apache2:$1
