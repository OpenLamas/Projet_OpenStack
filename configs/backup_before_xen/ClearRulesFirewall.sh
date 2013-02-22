#!/bin/bash
sudo ipnat -C
sudo ipnat -F
sudo ipnat -f /etc/ipf/ipnat.conf
sudo ipnat -l
