tor-relay
=========

A Docker script to run a [TOR](https://www.torproject.org/index.html.en) relay

## How to use

1. Connect to your server and clone the repo: `git clone https://github.com/fdelbos/tor-relay.git`
2. Optionnaly edit the `torrc` file and set your own paramerters.
3. Run `./start.sh`
4. Check docker logs: `docker logs tor-relay`, and look for the mesage: `Self-testing indicates your ORPort is reachable from the outside. Excellent.`
5. Congratulations! You now have your very own [TOR](https://www.torproject.org/index.html.en) relay!
