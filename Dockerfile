FROM ubuntu:24.04

RUN apt-get update && apt-get install -y openjdk-8-jdk clang-17
COPY entrypoint.sh /root/entrypoint.sh
