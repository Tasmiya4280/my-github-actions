FROM openjdk:8-jre-alpine

WORKDIR /usr/src/app

COPY . .

RUN ./gradlew build

EXPOSE 8080

CMD ["java", "-jar", "build/libs/my-app-1.0-SNAPSHOT.jar"]

