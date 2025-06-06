#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/Lingaiahthammisetti/4.7.expense-ansible-roles-common.git
cd 4.7.expense-ansible-roles-common
ansible-playbook main.yaml -e component=db
ansible-playbook main.yaml -e component=db #Run twice db.yaml
ansible-playbook main.yaml -e component=backend
ansible-playbook main.yaml -e component=frontend