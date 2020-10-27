#!/bin/bash

git ls-files | entr sh -c 'clear && cd Webhooks_build && cmake .. && cmake --build . && ./Webhooks'

