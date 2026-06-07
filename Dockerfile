# Step 1: Use a lightweight OpenJDK runtime base image
FROM eclipse-temurin:8-jre-alpine

# Step 2: Set the internal working directory
WORKDIR /app

# Step 3: Copy the compiled fat JAR file from the Gradle build output directory
COPY build/libs/my-java-app-1.0-SNAPSHOT.jar app.jar

# Step 4: Define the default container execution command
CMD ["java", "-jar", "app.jar"]
