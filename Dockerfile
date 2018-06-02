FROM ubuntu:18.04

MAINTAINER inotom

ENV \
  HOME=/home/app \
  DEBIAN_FRONTEND=noninteractive \
  TZ=Asia/Tokyo

RUN \
  apt-get update \
  && apt-get install -y tzdata git vim curl sudo man nano language-pack-ja-base language-pack-ja \
  && apt-get clean \
  && useradd --user-group --create-home --shell /bin/false app \
  && echo "app ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV \
  LANG=ja_JP.UTF-8

USER app
WORKDIR $HOME
