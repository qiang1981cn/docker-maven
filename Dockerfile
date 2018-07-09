FROM maven:3-jdk-7

COPY settings.xml /usr/share/maven/ref/
COPY pom.xml /tmp/pom.xml
RUN mvn -B -f /tmp/pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:go-offline
