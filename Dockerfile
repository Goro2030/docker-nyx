FROM ubuntu:rolling

MAINTAINER	Mariano Silva github.com/goro2030 @marianosilva

RUN apt-get update && apt upgrade -y && apt-get install nyx nano wget lsb-release -y && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* && rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin && apt-get clean all
COPY nyx.sh . 
COPY docker-entrypoint.sh /root/docker-entrypoint.sh
COPY nyxrc.config /root/.nyx/config/nyxrc.config
RUN chmod +x /root/docker-entrypoint.sh nyx.sh

ENTRYPOINT ["/root/docker-entrypoint.sh"]
CMD []