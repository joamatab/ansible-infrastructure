Nextcloud Dockerized
=========

This role installs and configures a docker based version of nextcloud. It is written to work fine with traefik as reverse proxy.

Requirements
------------

It's required that all needed packages for the `docker_service` module are installed as well as docker itself.

Since the role doesn't expose any ports by default, please use a reverse proxy like [`traefik`](https://traefik.io) to make it public available

Role Variables
--------------

### Nextcloud

|Variable name                |Default value                                                                  |Description                           |
|-----------------------------|-------------------------------------------------------------------------------|--------------------------------------|
|`nextcloud_version`          |`12.0`                                                                         |Version prefix for nextcloud container|
|`nextcloud_domain`           |`cloud.example.com`                                                            |domain used for nextcloud             |
|`nextcloud_admin_user`       |`cloud.example.com`                                                            |admin user for nextcloud              |
|`nextcloud_admin_password`   |password of `nextcloud_admin_user` for `nextcloud_domain` in your passwordstore|admin password for nextcloud          |
|`nextcloud_install_location` |`/var/srv/nextcloud`                                                           |Place where nextcloud stores its data |
|`nextcloud_config`           |Configure memcache and add `nextcloud_domain` as trusted domain                |Complex datastructure for configs     |

### MariaDB

|Variable name                |Default value                                                                  |Description                           |
|-----------------------------|-------------------------------------------------------------------------------|--------------------------------------|
|`nextcloud_database_version` |`latest`                                                                       |Version of the mariadb container      |
|`nextcloud_db_password`      |password of `db` for `nextcloud_domain` in your passwordstore                  |nextcloud database password           |



### Collabora (optional)


|Variable name                |Default value                                                                  |Description                           |
|-----------------------------|-------------------------------------------------------------------------------|--------------------------------------|
|`nextcloud_collabora_domain` |No default. Example value: `office.example.com`                                |domain used for collabora. (optional) |
|`nextcloud_collabora_version`|`latest`                                                                       |version of the collabora image        |

### Memcache

|Variable name                |Default value                                                                  |Description                           |
|-----------------------------|-------------------------------------------------------------------------------|--------------------------------------|
|`nextcloud_memcache_version` |`1.4`                                                                          |version of the used memcache image    |




Dependencies
------------

If you want to use the default values, you have to make sure, that [`pass`](https://www.passwordstore.org) is installed on your local machine.

On the remote machine you have to make sure, that `docker-compose` is installed as python version, including `PyYAML`. [See details.](https://docs.ansible.com/ansible/latest/docker_service_module.html#requirements-on-host-that-executes-module)

License
-------

GPL-3.0

Author Information
------------------

More details as well as example usage can be found in my [infrastructure playbook](https://github.com/SISheogorath/infrastructure)
