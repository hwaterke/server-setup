#!/usr/bin/env bash

# Run as root and ask password
ansible-playbook bootstrap.yml -u root --ask-pass
