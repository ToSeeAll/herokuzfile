FROM alpine:latest
ADD zfile /root/zfile
#ADD mycloudreve.ini /root/cloudreve/mycloudreve.ini
#ADD cloudreve.db /root/cloudreve/cloudreve.db
#ADD run.sh /root/cloudreve/run.sh
#ADD sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
#ADD glibc.apk /root/glibc.apk
#RUN ["sed","-i","s/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g","/etc/apk/repositories"]
RUN ["apk","add","--no-cache","openjdk8"]
#RUN ["wget","https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.34-r0/glibc-2.34-r0.apk"]
#RUN ["apk","add","--no-cache","glibc-2.34-r0.apk"]
#RUN ["apk","del","wget"]
#RUN chmod +x /root/cloudreve/cloudreve
RUN chmod +x /root/zfile/bin/start.sh
CMD /root/zfile/bin/start.sh
#FROM ubuntu
#ADD bedrock-server-1.18.1.02.zip /root/mc/bds.zip
#ADD start.sh /root/mc/run.sh
#RUN apt update && apt install -y unzip
#RUN ["unzip","-d","/root/mc","/root/mc/bds.zip"]
#RUN ["rm","-rf","/root/mc/bds.zip"]
#RUN apt remove unzip -y
#RUN chmod +x /root/mc/bedrock_server
#RUN chmod +x /root/mc/run.sh
#CMD /root/mc/run.sh