#!/bin/bash

git ls-files | entr sh -c 'cd Webhooks_build && cmake .. && cmake --build . && ./Webhooks'

