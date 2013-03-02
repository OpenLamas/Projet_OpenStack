#/bin/bash
pkill python
export PATH=$PATH:/opt/node/bin
cd /home/kaya/horizon/
nohup tools/with_venv.sh ./manage.py runserver 0.0.0.0:8080 &
