#!/bin/bash

[[ "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" =~  .*/([a-zA-Z0-9_\-]*) ]]

docker build $@ -f docker/Dockerfile -t ${BASH_REMATCH[1]} .
