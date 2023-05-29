#!/bin/bash
mosquitto_pub -t "dt/pinot/v1/nursinghome/"${1}"/room"${2}"/pinot-switch"${2}"/switch"${2} -m ${3}