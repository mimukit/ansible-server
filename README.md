# Ansible Server Setup Playbook

Ansible playbook to setup servers (mainly ubuntu & debian based). This playbook is focused on quickly deploying a "ready to use" server machine with my personal perferred setup.

## Requirements

- Git
- Ansible 2+ (automatically installed from [Ansible offical PPA](https://launchpad.net/~ansible/+archive/ubuntu/ansible) with the provided install.sh script)

## Installation

Run the following commands to install the playbook:

```bash
apt update && apt install curl -y && curl -fsSL https://raw.githubusercontent.com/mimukit/ansible-server/main/install.sh | bash
```
