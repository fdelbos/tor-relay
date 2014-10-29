#!/bin/bash

docker rm -f tor-relay

docker build -t tor/tor-relay .

docker run \
	-d --restart=always \
	--name tor-relay \
	-v "$PWD/data/db:/data/db" \
	-p 9001:9001 \
	tor/tor-relay
