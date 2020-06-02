FROM ubuntu:latest

RUN apt install -y pandoc /
                   git

COPY src src
COPY build.sh build.sh

ENTRYPOINT ["build.sh"]
