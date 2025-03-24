FROM ubuntu:24.04

COPY /bin/update-translation /usr/local/bin/

RUN \
   apt update -y \
&& apt upgrade -y \
&& apt install git pyqt5-dev-tools \
&& chmod +x /usr/local/bin/update-translation \
&& mkdir /translations
