FROM debian:latest
RUN apt update && apt install wget -y
RUN wget https://github.com/alist-org/alist/releases/download/v3.30.0/alist-linux-amd64.tar.gz
RUN curl -fsSL https://raw.gitmirror.com/synctv-org/synctv/main/script/install.sh | bash -s -- -v latest
RUN ls *.tar.gz | xargs -n1 tar -xzvf
CMD ./alist start && synctv server
