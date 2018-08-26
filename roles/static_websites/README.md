Static websites role
===

This role provides the ability to deploy various static sites with out docker containers in a very easy way.

**Notice that this role pushes HSTS (for 63072000 seconds) by default and doesn't offer an option to disable it.**

Example config:
---

`group_vars/static_websites`:

```
---
static_websites:
  example:
    image: docker.io/acme/example-site    # docker image, can include a tag
    domain: example.com                   # domain that is published by traefik
    www: true                             # Add www. as alias (optional)
    hsts:                                 # HSTS advanced settings (optinal)
      preloaded: true                     # enable preloaded header
      subdomains: true                    # enable all subdomains header
  example2:
    image: docker.io/acme/example-docs
    domain: docs.example.com
```
