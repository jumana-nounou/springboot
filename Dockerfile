FROM openjdk:17-jdk-alpine
# WORKDIR /spring-boot-mysql-example
# Run mvn clean install
# Copy the JAR file (/app)
COPY ../../target/**.jar /java.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "java.jar"]

# FROM maven:3-amazoncorretto-8 as builder
# COPY . .
# RUN ["mvn", "clean", "install"]

# FROM amazoncorretto:8-alpine-jre
# COPY --from=builder ./target/spring-boot-mysql-*.jar app.jar
# EXPOSE 8080
# CMD ["java", "-jar", "app.jar"]

