Mumble dockerized
=========

This role installs and configures a docker based version of mumble with a webclient. It is written to work fine with traefik as reverse proxy.

Requirements
------------

It's required that all needed packages for the `docker_service` module are installed as well as docker itself.

Since the role doesn't expose any ports by default, please use a reverse proxy like [`traefik`](https://traefik.io) to make it public available.

Role Variables
--------------

### Mumble

|Variable name                |Default value                                                                  |Description                           |
|-----------------------------|-------------------------------------------------------------------------------|--------------------------------------|
|`mumble_image_version`       |`latest`                                                                       |Version prefix for mumble image       |
|`mumble_domain`              |`mumble.example.com`                                                           |domain used for mumble                |
|`mumble_install_location`    |`/var/srv/mumble`                                                              |Place where mumble stores its data    |
|`mumble_defaultchannel`      |`mumble`                                                                       |Defaultchannel in Mumble              |
|`mumble_registername`        |`Example Mumble`                                                               |Name used as Description              |

Dependencies
------------

On the remote machine you have to make sure, that `docker-compose` is installed as python version, including `PyYAML`. [See details.](https://docs.ansible.com/ansible/latest/docker_service_module.html#requirements-on-host-that-executes-module)

License
-------

GPL-3.0

Author Information
------------------

More details as well as example usage can be found in my [infrastructure playbook](https://github.com/SISheogorath/infrastructure)
