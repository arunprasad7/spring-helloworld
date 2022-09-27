#!/bin/bash
rm -rf target
mvn clean install > mvn_clean_install_log.txt
nohup mvn spring-boot:run > log.txt 2> errors_log.txt < /dev/null &
PID=$!
echo $PID > pid.txt