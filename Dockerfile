FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y nano x-window-system-core x-window-system libxtst6 psmisc build-essential libx11-6 libx11-dev curl
COPY uvncrepeater.tar.gz /usr/local/src/uvncrepeater.tar.gz
RUN cd /usr/local/src && tar -zxvf uvncrepeater.tar.gz
RUN cd /usr/local/src/UVNCRepeater && make && make install
RUN useradd uvncrep

EXPOSE 5900 5500
CMD /usr/sbin/uvncrepeatersvc

