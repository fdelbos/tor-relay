FROM ubuntu:14.04

RUN echo 'deb     http://deb.torproject.org/torproject.org trusty main' >> /etc/apt/sources.list
RUN gpg --keyserver keys.gnupg.net --recv 886DDD89
RUN gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
RUN apt-get -qq update && \
	apt-get -qqy install deb.torproject.org-keyring && \
	apt-get -qqy install tor
	

COPY torrc /etc/tor/torrc

EXPOSE 9001

CMD ["/usr/bin/tor"]
