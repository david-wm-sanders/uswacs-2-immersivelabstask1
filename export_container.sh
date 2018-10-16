#!/usr/bin/env bash
# Make an export directory
mkdir -p exports/.tarchives
# Export the specified container by name
sudo docker export il_$1_$2 -o exports/.tarchives/il_$1_$2.tar
# Make an extraction dir and extract the archive to it
mkdir -p exports/il_$1_$2
sudo tar -xf exports/.tarchives/il_$1_$2.tar -C exports/il_$1_$2
# Remove the .tar
sudo rm exports/.tarchives/il_$1_$2.tar
