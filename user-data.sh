#!/bin/bash

sudo apt-get update -y
sudo apt-get install apache2 -y
instance_id=$(curl -s 169.254.169.254/latest/meta-data/instance-id)
echo $instance_id|sudo tee /var/www/html/index.html
