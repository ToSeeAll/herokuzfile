#!/bin/sh
# 不可关闭命令行，关闭即停止程序，或使用 ctrl + c 命令停止程序
java -Dfile.encoding=utf-8 -jar -Dserver.port=${PORT} zfile-release.jar
