#!/bin/bash

while true; do

	{ git ls-files; git ls-files . --exclude-standard --others; } | entr -d sh -c 'clear && cd Webhooks_build && cmake .. && cmake --build . && ./Webhooks'

done

