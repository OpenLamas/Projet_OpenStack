#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Usage: $0 IF NET_SRC IP_DST"
  exit 1
fi

if [[ $1 =~ ^[a-z]+[0-9]$ ]]; then if=$1; else
  echo "$1 doesn't seem to be a valid interface"
  exit 1
fi

if [[ $2 =~ ^([0-9]{1,3}\.?){4}\/[0-9]{1,2}$ ]]; then net_src=$2; else
  echo "$2 doesn't seem to be a valid network range"
  exit 1
fi

if [[ $3 =~ ^([0-9]{1,3}\.?){4}$ ]]; then ip_dst=$3; else
  echo "$3 doesn't seem to be a valid ip"
  exit 1
fi

rule="map $if $net_src -> $ip_dst"

echo $rule
echo $rule >> /etc/ipf/ipf.conf
