#!/usr/bin/env sh

docker build -f Dockerfile -t dev-playbook --build-arg="USERNAME=$USERNAME" . \
	&& docker run --rm --privileged=true -it dev-playbook sh -c 'ansible-playbook local.yml --ask-vault-pass && sh'
