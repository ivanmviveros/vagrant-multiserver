#!/usr/bin/env bash
sudo apt-get update --fix-missing
sudo apt-get -y install apache2 --fix-missing
cp /var/www/html/_index.html /var/www/html/index.html
