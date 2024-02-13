FROM debian:latest
RUN apt update && apt install curl wget -y
RUN wget https://github.com/alist-org/alist/releases/download/v3.30.0/alist-linux-amd64.tar.gz
# RUN wget https://github.com/synctv-org/synctv/releases/download/v0.4.1/synctv-linux-amd64
RUN curl -fsSL https://raw.githubusercontent.com/synctv-org/synctv/main/script/install.sh | bash -s -- -v latest
# RUN chmod +x ./synctv-linux-amd64 \
# && ./synctv-linux-amd64
RUN ls *.tar.gz | xargs -n1 tar -xzvf
CMD ./alist start && synctv server
