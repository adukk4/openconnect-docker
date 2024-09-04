FROM alpine:3.17.2

RUN apk update && apk add --no-cache openssh openssh-server 'openconnect<9.05' && mkdir /cert

RUN ssh-keygen -A
RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -N "" && mv /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys
RUN sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/' /etc/ssh/sshd_config && rm -rf /var/cache/apk/* && echo root:passwd | chpasswd

COPY run.sh /run.sh
COPY openssl_conf.cnf /cert/openssl_conf.cnf

RUN chmod +x /run.sh

WORKDIR /cert

EXPOSE 6666
ENTRYPOINT ["/bin/sh"]