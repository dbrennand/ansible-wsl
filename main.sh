#!/bin/bash
# Install python3-pip and python3.10-venv to get us going
sudo apt-get update && sudo apt-get install python3-pip python3.10-venv -y
# Create Python virtual environment
mkdir -pv ~/.venv && python3 -m venv ~/.venv/ansible-wsl
# Activate venv
source ~/.venv/ansible-wsl/bin/activate
# Install Ansible and required dependencies
python -m pip install ansible==7.4.0
ansible-galaxy install -r requirements.yml
# Run the Ansible playbook
ansible-playbook --ask-become-pass ansible-wsl.yml
# Cleanup
# Uninstall the initial system packages as we have the equivilents installed via Homebrew
sudo apt-get purge python3-pip python3.10-venv -y
rm -rf ~/.venv/ansible-wsl
