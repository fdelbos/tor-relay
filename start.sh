#!/bin/bash

docker rm -f tor-relay

docker build -t ator/tor-relay .

docker run \
	-d --restart=always \
	--name tor-relay \
	-p 9001:9001 \
	ator/tor-relay
