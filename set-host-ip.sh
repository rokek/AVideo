#!/bin/bash

DOCKER_HOST_IP=$(hostname -I | awk '{ print $1 }')

cd /opt/avideo/AVideo/videos

mv -f configuration.php configuration.php.bak
cp configuration.php.orig configuration.php
sed -i "s/DOCKER_HOST_IP/$DOCKER_HOST_IP/g" configuration.php
chown www-data:tape configuration.php

exit 0
