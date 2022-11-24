FROM debian:bullseye

RUN apt update && apt upgrade -y
RUN apt install iputils-ping neovim -y
