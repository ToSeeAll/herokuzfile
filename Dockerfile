FROM alpine:latest
ADD zfile-release.jar /zfile-release.jar
RUN ["apk","add","--no-cache","openjdk8"]
ADD run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh
