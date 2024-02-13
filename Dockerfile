FROM openjdk:11-jre-slim

WORKDIR /spring-boot-mysql-example

# Copy the JAR file (/app)
COPY /target/*.jar ./java.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "java.jar"]