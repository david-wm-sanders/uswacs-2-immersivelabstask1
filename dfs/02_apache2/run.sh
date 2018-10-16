#!/usr/bin/env bash
sudo docker run --name il_apache2 -d -p 8080:80 02_apache2:$1
