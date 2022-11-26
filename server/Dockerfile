FROM debian:11

EXPOSE 22:22 80:80 8080:8080

RUN apt update && apt upgrade -y
RUN apt install neovim curl iputils-ping wget openssh-server -y

RUN echo 'root:root' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN curl -sS https://starship.rs/install.sh | sh -s -- --yes

CMD service ssh start && echo 'eval "$(starship init bash)"' >> ~/.bashrc && bash
