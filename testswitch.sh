#!/bin/bash

topic="dt/switch"
mosquitto_pub -t ${topic} -m ${1}
if [ ${1} == "ON" ]
then
echo "topic: ${topic} | switch state: ON"
elif [ ${1} == "OFF" ]
then
echo "topic: ${topic} | switch state: OFF"
else
echo "You have to send argument ON/OFF"
fi