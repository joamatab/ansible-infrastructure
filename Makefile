
test:
	ansible -m ping all

matrix:
	ansible-playbook -i hosts.ini matrix.yml

mastodon:
	ansible-playbook mastodon.yml

minio:
	ansible-playbook -i hosts.ini minio.yml

ubuntu:
	ansible-playbook --connection=local --inventory 127.0.0.1, ubuntu1804.yml

vnc: 
	ansible-playbook --connection=local --inventory 127.0.0.1, vnc.yml

users: 
	ansible-playbook --connection=local --inventory 127.0.0.1, create_users.yml

devpi:
	ansible-galaxy install andrewrothstein.devpiserver
	ansible-playbook devpi.yml

devpi2:
	ansible-galaxy install hitotito.devpi
	ansible-playbook devpi2.yml

deps:
	ansible-galaxy install hitotito.devpi
	ansible-galaxy install robertdebock.python_pip
	ansible-galaxy install robertdebock.bootstrap
	ansible-galaxy install robertdebock.epel
	ansible-galaxy install robertdebock.buildtools
	ansible-galaxy install robertdebock.update
