FROM ubuntu:24.04

COPY /bin/update-translation /usr/local/bin/

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Stockholm"

RUN apt-get -q update \
 && apt-get -qy upgrade \
 && apt-get -qy --no-install-recommends install git ca-certificates pyqt5-dev-tools qttools5-dev-tools \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /usr/local/bin/update-translation \
 && mkdir /ngp-translations

CMD update-translation
