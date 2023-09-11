# Use an official Dart runtime as a parent image
FROM growerp/flutter-sdk-image:latest
# Copy the current directory contents into the container
# Create app directory
WORKDIR /app

# Install dependencies  
COPY pubspec.yaml .
RUN flutter pub get

# Give permission to user  
USER root

# Copy source code
COPY . .  

ENV PORT=5005   
ENV DEVICE_NAME=emulator-5554

EXPOSE 5005

# Default command 
CMD ["flutter", "run"]