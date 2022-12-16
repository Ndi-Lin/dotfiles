#!/bin/bash

while true
do
	sleep 1
	lidStatus=$(cat /proc/acpi/button/lid/LID/state | grep -c close)
	if [ $[lidStatus] == "1" ]; then
		dm-tool lock
	fi
done
