FROM chadautry/wac-python:latest 
RUN apk add --no-cache \
    curl \
    openssh-client \
    tar

RUN \
  mkdir -p /opt/ansible && \
  curl -fsSL http://releases.ansible.com/ansible/ansible-2.2.1.0.tar.gz -o ansible.tar.gz && \
  tar -xzf ansible.tar.gz -C /opt/ansible --strip-components 1 && \
  rm -fr ansible.tar.gz /opt/ansible/docs /opt/ansible/examples /opt/ansible/packaging

WORKDIR /var/ansible

ENV ANSIBLE_GATHERING explicit
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_SSH_PIPELINING True
ENV PATH /opt/ansible/bin:$PATH
ENV PYTHONPATH /opt/ansible/lib

ENTRYPOINT ["ansible-playbook"]
