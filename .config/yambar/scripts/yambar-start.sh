#!/bin/bash

killall yambar

monitors=$(wlr-randr | grep "^[^ ]" | awk '{ print$1 }')
total=$(wlr-randr | grep "^[^ ]" | awk '{ print$1 }' | wc -l)

for monitor in ${monitors}; do
	riverctl focus-output ${monitor}
	yambar &
	sleep 0.2
done
if [ "$total" -gt "1" ]; then
	riverctl focus-output DP-1
fi
exit 0
