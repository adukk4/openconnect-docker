#!/bin/sh
/usr/sbin/sshd

# Socks 
ssh -i /root/.ssh/id_rsa -D 0.0.0.0:6666 -o StrictHostKeyChecking=no -f -T -N -q root@localhost 2>/tmp/error

openconnect $@