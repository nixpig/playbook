# playbook

🏗️ Ansible playbook to set up dev machine

## Test install in Docker container

1. `git clone https://github.com/nixpig/playbook.git && cd $_`
1. `USERNAME=nixpig ./build-and-run.sh`

## Build install (for real!)

Either...

- Local: `ansible-playbook local.yml --ask-vault-pass`
- Remote: `curl -fsSL https://raw.githubusercontent.com/nixpig/playbook/main/install.sh | sh`
