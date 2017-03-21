# wac-ansible
Containerized Ansible for use with wac-bp

### Status
[![Build Status](https://travis-ci.org/chad-autry/wac-ansible.svg?branch=master)](https://travis-ci.org/chad-autry/wac-ansible)
[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/chadautry/wac-ansible/)

# Example
Use one of the [default directory layouts](http://docs.ansible.com/ansible/playbooks_best_practices.html#directory-layout) for playbooks and files.
Mount the top directory as /var/ansible. It is used as the working directory of the container.
```shell
docker run -it --net host -v $(pwd):/var/ansible chadautry/wac-ansible -i <inventory file> <playbook>
```
