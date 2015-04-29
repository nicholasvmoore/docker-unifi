FROM ubuntu:latest

VOLUME ["/var/lib/unifi"]

RUN echo "deb http://www.ubnt.com/downloads/unifi/distros/deb/debian debian ubiquiti" > /etc/apt/sources.list.d/20ubiquiti.list;\
    apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50;\
    apt-get -q update;\
    apt-get install -qy --force-yes unifi;\
    apt-get -q clean ;\
    rm -rf /var/lib/apt/lists/*

EXPOSE 8080/tcp 8081/tcp 8443/tcp 8843/tcp 8880/tcp 3478/udp 1900/udp

WORKDIR /var/lib/unifi

ENTRYPOINT ["/usr/bin/java", "-Xmx1024M", "-jar", "/usr/lib/unifi/lib/ace.jar"]
CMD ["start"]
