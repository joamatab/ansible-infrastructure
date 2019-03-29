DNS over HTTPS
===

This role will setup a DNSSec-enabled DNS server that runs a DNS over HTTPS proxy to provide usable DNS queries for Firefox and other browsers.

Variables
---

|Variable              |Description                                                                            |
|----------------------|---------------------------------------------------------------------------------------|
|`doh_install_location`|Install location for the container configuration (docker-compose.yml)                  |
|`doh_domain`          |Domain that will be used for the container to be available (when using Traefik)        |
|`doh_version`         |Version of the proxy ([Repository](https://quay.io/repository/sheogorath/doh?tab=tags))|
