# wac-ansible
Containerized Ansible for use with wac-bp

### Status
[![Build Status](https://travis-ci.org/chad-autry/wac-ansible.svg?branch=master)](https://travis-ci.org/chad-autry/wac-ansible)
[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/chadautry/wac-ansible/)

# Example
```shell
docker run -it --net host -v$(pwd):/ansible/playbooks chadautry/wac-ansible -i <inventory file> <playbook>
```
