FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --yes \
        texlive-base \
        texlive-latex-extra \
        texlive-fonts-extra \
        fonts-ebgaramond

RUN mkdir -p /mnt/resume

WORKDIR /mnt/resume
