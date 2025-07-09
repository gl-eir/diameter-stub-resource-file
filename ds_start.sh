#!/bin/bash
set -x
VAR=""
build_path="/u01/eirapp/ds/"
build="diameter-server.jar"
cd $build_path
status=`ps -ef | grep $build | grep java`
if [ "$status" != "$VAR" ]
then
 echo "Process Already Running"
else
 echo "Starting Process"
java -Dlogging.config=./log4j2.xml -jar $build --spring.config.location=application.yml 1>/dev/null 2>/dev/null &
echo "Process Started"
fi
