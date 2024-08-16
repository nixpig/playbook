# playbook

🏗️ Ansible playbook to set up dev machine

## Test install in Docker container

1. `git clone https://github.com/nixpig/playbook.git && cd $_`
1. `USERNAME=nixpig ./build-and-run.sh`

## Build install (for real!)

Either...

- Local: `ansible-playbook local.yml --ask-vault-pass --ask-become-pass`
- Remote: `curl -fsSL https://raw.githubusercontent.com/nixpig/playbook/main/install.sh | sh`

**Note:** when installing in default Arch running on WSL2, may need to also set `LC_ALL="C.UTF-8"`.
