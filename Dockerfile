# Multi-stage Dockerfile for Java Application
# Stage 1: Build the application
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom.xml and download dependencies (caching layer)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM eclipse-temurin:17-jre-slim
WORKDIR /app

# Copy JAR file from build stage
COPY --from=build /app/target/java-app-1.0.jar app.jar

# Expose port (optional for console apps, but good practice)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
