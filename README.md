# server-setup
Ansible playbook to secure a new Debian based server

# How-to

## Known host
For a new server, run the following commands:
```
ssh-keygen -R <ip>
ssh-keygen -R <domain>
ssh-keyscan -t rsa,dsa <ip> >> ~/.ssh/known_hosts
ssh-keyscan -t rsa,dsa <domain> >> ~/.ssh/known_hosts
```

## Configure playbook
Open `playbook.yml` and configure the variables at the top.
To generate the crypted passwords, use `ansible_password.sh`

## Run the playbook
`./setup.sh`

Note: connection as root will work only the first time.

# TODO
* [x] Change root password
* [x] Create default users
* [ ] Configure SSH public keys for default users
* [x] Add default users to passwordless sudoers
* [x] Apt update
* [x] Apt upgrade
* [x] Configure fail2ban
* [x] Configure unattended-upgrades
* [x] Configure firewall (ufw)
* [ ] Install list of default packages (tree, ...)
* [x] Lockdown SSH
  * PasswordAuthentication no
  * PermitRootLogin no
  * X11Forwarding no
  * AllowTcpForwarding yes
  * Port {{ security_ssh_port }}
