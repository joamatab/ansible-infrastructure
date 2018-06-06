GitLab runner + Digitalocean
============================

This role installs and configures a docker based version of gitlab runner. It is build to manage instances on Digitalocean to run your build jobs. Which makes it safe to run on a shared host while providing full privileges to the build job.

Requirements
------------

It's required that all needed packages for the `docker_service` module are installed as well as docker itself.

Role Variables
--------------

### Gitlab-runner

|Variable name                |Default value                                                                  |Description                           |
|----------------------------------|------------------------------------------------------------------------|--------------------------------------|
|`gitlabrunner_gitlab_url`         |`gitlab.example.com`                                                    |URL of your gitlab instance|
|`gitlabrunner_gitlab_token`       |Entire in passwordstore for `gitlab-runner-token` of the gitlab url     |GitLab-CI token for your runner|
|`gitlabrunner_digitalocean_token` |Entire in passwordstore for `cloud.digitalocean.com/gitlab-runner-token`|Your Digitalocean token for the runner|
|`gitlabrunner_Digitalicean_region`|`fra1`                                                                  |Digitalocean region where your runners will be created|
|`gitlabrunner_digitalocean_size`  |`2gb`                                                                   |Size of the digitalocean instances that are used for your builds|


Dependencies
------------

If you want to use the default values, you have to make sure, that [`pass`](https://www.passwordstore.org) is installed on your local machine.

On the remote machine you have to make sure, that `docker-compose` is installed as python version, including `PyYAML`. [See details.](https://docs.ansible.com/ansible/latest/docker_service_module.html#requirements-on-host-that-executes-module)


Digitalocean token
------------------

Check your Digitalocean account here: https://cloud.digitalocean.com/settings/api/tokens


Gitlab runner token
-------------------

For the registration of a runner and to obtain its (full) token check: https://docs.gitlab.com/ce/ci/runners/README.html

*Notice that the gitlab runner token is not the registration token*


License
-------

GPL-3.0

Author Information
------------------

More details as well as example usage can be found in my [infrastructure playbook](https://octo.sh/Sheogorath/ansible-infrastructure/tree/master/roles/gitlab-runner)
