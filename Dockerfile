FROM adoptopenjdk/openjdk11

# Set the application's working directory
WORKDIR /usr/src/app

# Expose port 8080 for the application
EXPOSE 8080

# Define environment variables
ENV APP_HOME=/usr/src/app

# Copy the JAR file into the container
COPY target/*.jar $APP_HOME/app.jar

# Set the command to run the JAR file
CMD ["java", "-jar", "/usr/src/app/app.jar"]
