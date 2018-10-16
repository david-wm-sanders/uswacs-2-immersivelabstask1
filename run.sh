#!/usr/bin/env bash
sudo docker run --name il_$1_$2 -d -p 8080:80 $1:$2
