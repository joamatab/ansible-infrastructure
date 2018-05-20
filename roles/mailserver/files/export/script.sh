#!/usr/bin/env bash

cd /var/srv/mailserver

/usr/local/bin/acme-cert-dump /var/srv/traefik/acme/acme.json "$(hostname --fqdn)" ./ssl/

chcon -R -t postfix_etc_t ./ssl/

cp ssl/privkey.pem /etc/pki/dovecot/private/
cp ssl/fullchain.pem /etc/pki/dovecot/certs/
chcon -t dovecot_cert_t /etc/pki/dovecot/private/privkey.pem
chcon -t dovecot_cert_t /etc/pki/dovecot/certs/fullchain.pem
