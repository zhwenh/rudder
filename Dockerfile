FROM alpine
MAINTAINER admin@acale.ph

ADD build/bin/rudder /usr/local/bin/rudder
ADD third-party/swagger /opt/rudder/swagger

VOLUME /opt/rudder/cache

EXPOSE 5000
ENTRYPOINT ["/usr/local/bin/rudder"]
