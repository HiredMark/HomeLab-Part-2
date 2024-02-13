#!/bin/bash
sudo snap install openstack --channel 2023.1
sunbeam prepare-node-script | bash -x && newgrp snap_daemon
sunbeam cluster bootstrap --accept-defaults
sunbeam configure --accept-defaults --openrc demo-openrc
