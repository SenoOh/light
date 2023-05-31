#!/bin/bash

topic="dt/pinot/v1/nursinghome/"${1}"/room"${2}"/pinot-switch"${2}"/switch"${2}
mosquitto_pub -t ${topic} -m ${3}
if [ ${3} == "ON" ]
then
echo "topic: ${topic} | switch state: ON"
elif [ ${3} == "OFF" ]
then
echo "topic: ${topic} | switch state: OFF"
else
echo "You have to send argument ON/OFF"
fi