# 1. Use an official, lightweight Java Runtime environment
FROM eclipse-temurin:17-jre-alpine

# 2. Create and set the application directory inside the container
WORKDIR /app

# 3. Copy the compiled JAR file from your target folder
COPY target/*.jar app.jar

# 4. Expose the specific port configured in your application
EXPOSE 2330

# 5. Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]

