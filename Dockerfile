FROM debian:10

EXPOSE 22:22 80:80 8080:8080

RUN apt update && apt upgrade -y
RUN apt install vim iputils-ping wget openssh-server -y

# autograder config
# RUN apt install python3 python3-pip -y
# RUN pip3 install requests
#
# RUN wget https://tool.epidoc.eu/autograder.py

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo 'root:root' | chpasswd

CMD service ssh start && bash
