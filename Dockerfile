# Stage 1: Build the Spring Boot app
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Add custom settings.xml
COPY maven/settings.xml /root/.m2/settings.xml

# Copy source and build
COPY . .
RUN mvn clean package -DskipTests
