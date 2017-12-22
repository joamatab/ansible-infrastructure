[![Build Status](https://img.shields.io/badge/MadIRC-%23Admins-green.svg)](https://webclient.madirc.net/?join=%23Admins)

# Infrastructure
This playbook is used to install and maintain my private infrastructure setup.

For the client setup checkout my [client repository](https://github.com/SISheogorath/ansible-client).

Usage
---

To run this playbook you have to do a few steps:

```console
# Clone the repository
git clone https://github.com/SISheogorath/infrastructure.git

# Edit the inventory file
$EDITOR inventory

# Edit the group_vars
$EDITOR group_vars/*

# Deploy
ansible-playbook -i inventory site.yml
```

That's it for now.

*Hint: For own modifications and to keep track of your changes in a git repository you can use a deployment branch. For details see: https://www.shivering-isles.com/publish-your-work-while-keeping-a-private-fork/*
