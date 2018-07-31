#!/bin/bash
while true; do 
  curl http://security.debian.org/debian-security/dists/jessie-kfreebsd/updates/InRelease >>/dev/stdout
  sleep 1
done
