# playbook

🏗️ Ansible playbook to set up dev machine

1. Add SSH key from local machine to GitHub.
1. Ensure SSH key in running agent: `eval $(ssh-agent -s) && ssh-add ~/.ssh/id_rsa`
1. Clone repo: `git clone git@github.com:nixpig/playbook.git && cd $_`
1. Install pre-requisite packages: `./install.sh`
1. Run playbook: `ansible-playbook local.yml --ask-vault-pass --ask-become-pass`


**Note:** when installing in default Arch running on WSL2, may need to also set `LC_ALL="C.UTF-8"`.

## Assumes a working base Arch install...

1. Boot from install image
1. Set keyboard layout: `loadkeys uk`
1. Set root password: `passwd`
1. Partition hard disk:
  1. Run partitioning utility: `fdisk`
  1. Add a new EFI boot partition: `n`
  1. Select primary: `p`
  1. Set partition number: `1`
  1. Set first sector: `2048`
  1. Set last sector: `+512M`
  1. Add a new root partition: `n`
  1. Select primary: `p`
  1. Set partition number: `2`
  1. Set first sector as default: `<enter>`
  1. Set last sector as default: `<enter>`
  1. Write the partition table: `w`
1. Format partitions:
  1. Format EFI partition as FAT: `mkfs.fat /dev/sda1`
  1. Format the root partition as ext4: `mkfs.ext4 /dev/sda2`
1. Mount the partitions:
  1. Mount root partition: `mount /dev/sda2 /mnt`
  1. Create mount point for EFI boot partition: `mkdir /mnt/boot`
  1. Mount the EFI boot partition: `mount /dev/sda1 /mnt/boot`
1. Bootstrap the base system: `pacstrap /mnt base linux linux-firmware dhcpcd openssh vim`
.. 




## Installing virtualbox/vagrant

1. Install kernel headers: `pacman -S linux-rt-headers`
1. Install virtualbox: `pacman -S virtualbox`
1. Load modules: `modprobe vboxdrv`
1. Install vagrant: from Hashicorp package - pacman version is outdated and doesn't work

1. Add user to group: `usermod -aG vboxusers $USER`
1. Reboot!

