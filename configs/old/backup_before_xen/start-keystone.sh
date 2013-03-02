#!/bin/bash
pkill python
cd /home/kaya/keystone/
nohup tools/with_venv.sh bin/keystone-all &
