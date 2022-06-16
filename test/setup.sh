#!/bin/bash

TEST_DIR=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
PROJECT_ROOT=$(dirname $TEST_DIR)

WORKSPACE=${WORKSPACE:=${PROJECT_ROOT}}


docker-compose -f $TEST_DIR/dev.yml up -d --build

