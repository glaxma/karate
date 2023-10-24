FROM adoptopenjdk/maven-openjdk11
LABEL author="lovely"
WORKDIR /app
COPY pom.xml /app
COPY ./src/test/java /app/src/test/java
CMD mvn test