# Use an official Dart runtime as a parent image
    FROM google/dart:latest

    # Set the working directory in the container
    WORKDIR /usr/src/app

    # Copy the current directory contents into the container
    COPY . .

    # Get the Flutter SDK
    RUN git clone https://github.com/flutter/flutter.git
    ENV PATH="$PATH:`pwd`/flutter/bin"

    # Get dependencies for the Flutter project
    RUN flutter pub get

    # Build the Flutter app for web