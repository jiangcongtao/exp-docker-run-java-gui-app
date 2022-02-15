# FROM maven:3.5.0-jdk-8
FROM openjdk:17-jdk-slim-buster
RUN apt update && apt install -y libxext6 xdg-utils
WORKDIR /apps
COPY dotm2-settings.xml /root/.m2/settings.xml
COPY . /apps

# CMD ["java","HelloWorldSwing"]
CMD ["./run.sh"]
