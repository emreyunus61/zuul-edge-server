# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre
# Refer to Maven build -> finalName
ARG JAR_FILE=target/*.jar
# cd /opt/app
WORKDIR /opt/app
# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]


#Docker işlemleri
#docker build -t zuul-edge-server:0.0.1 . //zuul-edge-server image oluşturdu
#docker-compose -p stock-management -f zuul-edge-server.yml up -d