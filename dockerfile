FROM growerp/flutter-sdk-image

COPY . /app
WORKDIR /app

RUN apt-get install -y adb
EXPOSE 5000

CMD ["flutter", "run"]