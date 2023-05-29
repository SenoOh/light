#!/bin/bash

mosquitto_sub -t "cmd/light" | while read -r payload
do
echo "Rx light: ${payload}"
done