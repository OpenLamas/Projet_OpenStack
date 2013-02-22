#!/bin/bash
KEYSTONE_HOST=192.168.1.5
GLANCE_HOST=192.168.1.6
SWIFT_HOST=192.168.1.9
NOVA_HOST=192.168.1.30

USER=kaya

mkdir -p /tmp/osconfig
cd /tmp/osconfig
git clone https://github.com/OpenLamas/Projet_OpenStack.git
cd Projet_OpenStack/configs
for svc in keystone glance; do
  host=${svc}_HOST
  echo ${!host}
  scp -r $svc/* $USER@${!host}:~/$svc/etc/
done
