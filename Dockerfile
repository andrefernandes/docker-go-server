# CentOS 7 + Go CD Server

FROM andrefernandes/docker-java7

MAINTAINER Andre Fernandes

WORKDIR /opt

RUN wget http://download.go.cd/gocd-rpm/go-server-14.2.0-377.noarch.rpm -q && \
    yum -y localinstall go-server-14.2.0-377.noarch.rpm && \
    rm go-server-14.2.0-377.noarch.rpm && \
    yum clean all

EXPOSE 8153
EXPOSE 8154


