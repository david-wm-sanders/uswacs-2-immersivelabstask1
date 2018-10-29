#!/usr/bin/env bash
# Make an export directory
mkdir -p exports/.tarchives
# Export the specified container by name
sudo docker export $1 -o exports/.tarchives/$1_$2.tar
# Make an extraction dir and extract the archive to it
mkdir -p exports/$1_$2
sudo tar -xf exports/.tarchives/$1_$2.tar -C exports/$1_$2
# Remove the .tar
sudo rm exports/.tarchives/$1_$2.tar
