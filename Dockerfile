FROM ubuntu:24.04

RUN apt-get update && apt-get install -y openjdk-8-jdk clang-17

ADD interceptor.c /root
WORKDIR /root
RUN clang-17 -shared -fPIC -g3 -O0 -fsanitize=address interceptor.c -o libinterceptor.so -ldl

COPY entrypoint.sh /root/entrypoint.sh
