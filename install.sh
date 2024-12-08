#!/usr/bin/env sh

sudo pacman -Syu --noconfirm python-pip curl git

if (pacman -Qi ansible > /dev/null 2>&1); then
		echo "Ansible already installed"
else
		sudo pacman -Syu --noconfirm ansible && echo "Ansible installed"
fi

