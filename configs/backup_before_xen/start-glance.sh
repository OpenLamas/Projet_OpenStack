#!/bin/bash
pkill python
cd /home/kaya/glance/
nohup tools/with_venv.sh bin/glance-registry --config-file=/home/kaya/glance/etc/glance-registry.conf &
nohup tools/with_venv.sh bin/glance-api --config-file=/home/kaya/glance/etc/glance-api.conf &

