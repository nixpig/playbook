# playbook

🏗️ Ansible playbook to set up dev machine

1. Add SSH key from local machine to GitHub.
1. Ensure SSH key in running agent: `eval $(ssh-agent -s) && ssh-add ~/.ssh/id_rsa`
1. Clone repo: `git clone git@github.com:nixpig/playbook.git && cd $_`
1. Run playbook: `ansible-playbook local.yml --ask-vault-pass --ask-become-pass`


**Note:** when installing in default Arch running on WSL2, may need to also set `LC_ALL="C.UTF-8"`.
