#!/bin/sh
# heroku最大内存好像就500M
java -Xmx500m -Dfile.encoding=utf-8 -jar -Dserver.port=${PORT} zfile-release.jar
