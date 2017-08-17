# infrastructure
My infrastructure playbook


Install
---

As external Playbook currently [`mongrelion.docker`](https://galaxy.ansible.com/mongrelion/docker/) is required. Since it's licensed under MIT license it's not included in this repository.

```
ansible-galaxy install -p roles mongrelion.docker
```


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

