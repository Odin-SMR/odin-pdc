FROM debian:bookworm-slim
RUN apt-get update
RUN apt-get install -y heimdal-clients openssh-client
COPY krb5.conf /etc/krb5.conf
RUN mkdir /root/.ssh
COPY ssh_config /root/.ssh/config
RUN chmod 664 /root/.ssh/config
