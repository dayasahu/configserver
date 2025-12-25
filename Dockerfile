FROM eclipse-temurin:21-jre
WORKDIR /app

ARG JAR_FILE=target/configserver.jar
COPY ${JAR_FILE} /app/configserver.jar

EXPOSE 8071

ENTRYPOINT ["java", "-jar", "/app/configserver.jar"]
