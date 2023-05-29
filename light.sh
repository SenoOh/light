#!/bin/bash

mosquitto_sub -t "cmd/pinot/v1/nursinghome/"${1}"/room"${2}"/pinot-light"${2}"/light"${2} | while read -r payload
do
echo "Rx MQTT: ${payload}"
done