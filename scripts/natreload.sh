#!/bin/bash

echo 'Chargement des regles'
ipnat -f /etc/ipf/ipf.conf
echo 'Activation de ipfilter'
svcadm enable ipfilter
svcadm restart ipfilter
echo 'Activation du forwarding ip'
ndd -set /dev/tcp ip_forwarding 1
