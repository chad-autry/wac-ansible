FROM chadautry/wac-python:latest 
RUN apk add --no-cache \
    curl \
    openssh-client \
    tar

RUN \
  mkdir ansible && \
  curl -fsSL http://releases.ansible.com/ansible/ansible-2.2.1.0.tar.gz -o ansible.tar.gz && \
  tar -xzf ansible.tar.gz -C ansible --strip-components 1 && \
  rm -fr ansible.tar.gz /ansible/docs /ansible/examples /ansible/packaging

ENV ANSIBLE_GATHERING explicit
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_SSH_PIPELINING True
ENV PYTHONPATH /ansible/lib

ENTRYPOINT ["ansible-playbook"]
