FROM ubuntu:jammy

RUN apt-get update && apt-get install -yq wget unzip libpcap0.8 && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/linbpq
WORKDIR /opt/linbpq

# Add the linbpq file
ADD http://www.cantab.net/users/john.wiseman/Downloads/Beta/pilinbpq64 /opt/linbpq
RUN chmod +x /opt/linbpq/pilinbpq64

# Add the HTML pages
RUN mkdir /opt/linbpq/HTML
RUN cd HTML; wget http://www.cantab.net/users/john.wiseman/Downloads/Beta/HTMLPages.zip; unzip HTMLPages.zip; rm HTMLPages.zip


ENTRYPOINT /opt/linbpq/pilinbpq64