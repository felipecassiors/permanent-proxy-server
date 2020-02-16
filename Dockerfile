FROM ubuntu:bionic

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.22.1.0/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /

RUN set -ex; \
	apt-get update; \
	apt-get install -y squid

COPY squid.conf /etc/squid/squid.conf

EXPOSE 80/tcp

ENTRYPOINT [ "/init" ]
CMD [ "squid", "-dN" ]
