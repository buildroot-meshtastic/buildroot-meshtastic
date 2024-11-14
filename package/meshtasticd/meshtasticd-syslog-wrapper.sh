#!/bin/sh
# Inspired by:
# https://github.com/buildroot/buildroot/blob/master/package/docker-engine/dockerd-syslog-wrapper.sh
cd /root
{
  "${@}" &
  CMD_PID=$!
  echo $CMD_PID > "/var/run/$(basename "${1}").pid"  # Save the PID
  wait $CMD_PID  # Wait for the command to complete
} 2>&1 | while read -r LINE; do
    logger -t "$(basename "${1}")" "$LINE"
done
