FROM ubuntu:24.04

COPY /bin/update-translation /usr/local/bin/

RUN \
   apt update -qy \
&& apt upgrade -qy \
&& apt install -qy git pyqt5-dev-tools \
&& chmod +x /usr/local/bin/update-translation \
&& mkdir /translations
