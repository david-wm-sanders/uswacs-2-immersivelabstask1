#!/usr/bin/env bash
sudo docker run --name il_task_$1 -d -p 8080:80 il_task:$1 
