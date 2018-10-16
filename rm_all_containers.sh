#!/usr/bin/env bash
sudo docker container rm $(sudo docker container ls -aq)
