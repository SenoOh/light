#!/bin/bash
topic="cmd/pinot/v1/nursinghome/"${1}"/room"${2}"/pinot-light"${2}"/light"${2}
mosquitto_sub -t ${topic} | while read -r payload
do
if [ ${payload} == "ON" ]
then
echo "topic: ${topic} | light status: FLASH"
else
echo "topic: ${topic} | light status: DARK"
fi
done