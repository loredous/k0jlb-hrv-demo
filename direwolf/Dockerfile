FROM ubuntu:jammy

ENV ADEVICE=plughw:0
ENV MYCALL=K0JLB
ENV PTT=""

COPY direwolf.conf.template /root/direwolf.conf.template
COPY entrypoint.sh /usr/bin/entrypoint.sh

RUN apt update && apt install -y direwolf alsa-utils gettext-base && apt-get clean && rm -rf /var/lib/apt/lists/* && chmod +x /usr/bin/entrypoint.sh

EXPOSE 8000
EXPOSE 8001

ENTRYPOINT /usr/bin/entrypoint.sh