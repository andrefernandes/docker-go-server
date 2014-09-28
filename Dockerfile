# CentOS 7 + Go CD Server

FROM andrefernandes/docker-java7

MAINTAINER Andre Fernandes

WORKDIR /opt

RUN wget http://download.go.cd/gocd-rpm/go-server-14.2.0-377.noarch.rpm -q && \
    yum -y localinstall go-server-14.2.0-377.noarch.rpm && \
    rm go-server-14.2.0-377.noarch.rpm && \
    yum clean all

RUN yum install git subversion -y && \
    yum clean all

EXPOSE 8153
EXPOSE 8154

ADD go-server /etc/default/go-server
RUN chown go:go /etc/default/go-server

USER go

RUN ssh-keygen -q -f /var/go/.ssh/id_rsa -N ""

WORKDIR /var/go

# para aceitar a chave do servidor GitHub
RUN ssh -o StrictHostKeyChecking=no git@github.com; echo "ok"

CMD ["/usr/share/go-server/server.sh"]

