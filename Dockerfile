FROM debian:bullseye

EXPOSE 22

RUN apt update && apt upgrade -y
RUN apt install iputils-ping openssh-server -y

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:root' | chpasswd

CMD service ssh start && bash
