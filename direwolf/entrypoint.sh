#!/bin/bash

rm /etc/direwolf.conf

cat /root/direwolf.conf.template | envsubst > /etc/direwolf.conf

direwolf -c /etc/direwolf.conf