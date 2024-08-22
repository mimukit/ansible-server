#!/bin/bash

# INFO: check if sudo is available
if command -v sudo &>/dev/null; then
  SUDO="sudo"
else
  SUDO=""
fi

# INFO: Install ansible

if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
  echo -e "\n🚀 Adding Ansible PPA"
  $SUDO apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
  echo -e "\n🚀 Installing Ansible..."
  $SUDO apt update
  $SUDO apt install software-properties-common build-essential ansible git curl -y
else
  echo -e "\n✅ Ansible already installed"
fi

# INFO: Clone repository

cd "$HOME" || exit

if [ ! -d "ansible-server" ]; then
  echo -e "\n🚀 Cloning repository..."
  git clone https://github.com/mimukit/ansible-server.git
fi

# INFO: Print ansible playbook run command

echo -e "\n🚀 Run the following command to execute the Ansible playbook:"

echo -e "\n\ncd ~/ansible-server && ansible-playbook -i hosts setup-server.yml"
