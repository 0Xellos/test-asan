#!/bin/bash

cd /root/test-asan
./run_with_asan.sh ./gradlew clean test
