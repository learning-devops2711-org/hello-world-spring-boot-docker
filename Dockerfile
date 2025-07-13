# ---------- Build Stage ----------
FROM maven:3.9-eclipse-temurin-21 AS builder

WORKDIR /app

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the app (skip tests if desired)
RUN mvn clean package -DskipTests

# ---------- Runtime Stage ----------
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copy the JAR from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
