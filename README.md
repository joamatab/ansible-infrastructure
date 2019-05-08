# Infrastructure
This playbook is used to install and maintain my private infrastructure setup.

For the client setup checkout my [client repository](https://git.shivering-isles.com/ansible-client/fedora).

Usage
---

To run this playbook you have to do a few steps:

```console
# Clone the repository
git clone https://git.shivering-isles.com/shivering-isles/infrastructure.git

# Edit the inventory file
vi inventory

# Edit the group_vars
vi group_vars/*

# Deploy
ansible-playbook -i inventory site.yml
```

That's it for now.

*Hint: For own modifications and to keep track of your changes in a git repository you can use a deployment branch. For details see: https://www.shivering-isles.com/publish-your-work-while-keeping-a-private-fork/*
