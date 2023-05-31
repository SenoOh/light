#!/bin/bash

topic="cmd/light"
mosquitto_sub -t "cmd/light" | while read -r payload
do
if [ ${payload} == "ON" ]
then
echo "topic: ${topic} | light state: FLASH"
else
echo "topic: ${topic} | light state: DARK"
fi
done