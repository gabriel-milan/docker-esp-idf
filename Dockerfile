FROM debian:buster

LABEL maintainer "Gabriel Gazola Milan <gabriel.milan@lps.ufrj.br>"

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

USER root
SHELL [ "/bin/bash", "-c" ]

# Installing APT dependencies
RUN apt-get update
RUN apt-get install -y \
  gcc \
  git \
  wget \
  make \
  libncurses-dev \
  flex \
  bison \
  gperf \
  python3 \
  python3-pip \
  python3-setuptools \
  python3-serial \
  python3-cryptography \
  python3-future \
  libffi-dev \
  libssl-dev
RUN ln -s /usr/bin/python3 /usr/bin/python & \
  ln -s /usr/bin/pip3 /usr/bin/pip

# Getting xtensa-esp32-elf-linux64
RUN mkdir -p /esp
RUN cd /esp && wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
RUN cd /esp && tar -xzf xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
ENV PATH "$PATH:/esp/xtensa-esp32-elf/bin"

# Getting ESP-IDF
RUN cd /esp && git clone -b v3.2.4 --recursive https://github.com/espressif/esp-idf.git
ENV IDF_PATH "/esp/esp-idf"
RUN python3 -m pip install -r $IDF_PATH/requirements.txt
ENV PATH "$PATH:${IDF_PATH}/components/esptool_py/esptool:${IDF_PATH}/components/espcoredump:${IDF_PATH}/components/partition_table/:${IDF_PATH}/tools/"