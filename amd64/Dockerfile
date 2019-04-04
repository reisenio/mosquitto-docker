FROM debian:latest

RUN apt-get update \
 && apt-get install -y mosquitto \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/sbin

VOLUME "/data"

EXPOSE 1883/tcp

ENTRYPOINT ["/usr/sbin/entrypoint.sh"]
