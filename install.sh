#!/bin/bash

# INFO: Install ansible

if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
  echo -e "\n🚀 Adding Ansible PPA"
  sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
  echo -e "\n🚀 Installing Ansible..."
  sudo apt update
  sudo apt install software-properties-common ansible git python-apt -y
else
  echo -e "\n✅ Ansible already installed"
fi

# INFO: Run ansible playbook

echo -e "\n🚀 Running Ansible playbook..."
ansible-playbook playbook.yml
