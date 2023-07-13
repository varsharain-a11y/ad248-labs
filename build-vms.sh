#!/bin/bash

cd /tmp
source /etc/rht
now="$(date +%Y%m%d-%H%M)"
for vm in ${RHT_VMS}; do
  log="/tmp/build-${vm}-${now}.log"
  echo -n "Building ${vm}... "
  if ssh root@${vm} "cd /tmp ; curl -sO http://materials.example.com/build-${vm}.sh"
  then
    #XXX the build scripts don't capture command status so the SUCCESS message may be misleading
    #if echo "./build-${vm}.sh" > "${log}" 2>&1
    if ssh root@${vm} "cd /tmp ; bash ./build-${vm}.sh" > "${log}" 2>&1
    then
      echo "SUCCESS"
      echo "But check anyway the log saved as ${log}"
    else
      echo "FAIL"
      echo "Build log saved as ${log}"
    fi
  else
      echo "FAIL"
      echo "Problem downloading build script to ${vm}"
  fi
done
