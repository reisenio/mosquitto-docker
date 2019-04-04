FROM reisen/debian-arm-qemu:latest

RUN [ "cross-build-start" ]

RUN apt-get update \
 && apt-get install -y mosquitto \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/sbin

VOLUME "/data"

EXPOSE 1883/tcp

RUN [ "cross-build-end" ]

ENTRYPOINT ["/usr/sbin/entrypoint.sh"]
