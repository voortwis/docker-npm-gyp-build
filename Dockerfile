FROM nubs/npm-build:latest

MAINTAINER Spencer Rinehart <anubis@overthemonkey.com>

USER root

# Update system and install python/make/gcc for gyp compilation.
RUN pacman --sync --refresh --sysupgrade --noconfirm --noprogressbar --quiet && pacman --sync --noconfirm --noprogressbar --quiet python2 make gcc

USER build

ENV PYTHON python2
