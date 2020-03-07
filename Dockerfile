FROM ubuntu:bionic

RUN set -ex; \
	apt-get update; \
	apt-get install -y squid; \
	rm -rf /var/lib/apt/lists/*

COPY squid.conf /etc/squid/squid.conf

EXPOSE 80/tcp

# s6-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /
ENV S6_LOGGING=1
ENTRYPOINT [ "/init" ]

CMD [ "squid", "-NYCd1" ]
