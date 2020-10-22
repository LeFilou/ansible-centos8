FROM geerlingguy/docker-centos8-ansible:latest

ENV ANSIBLE_HOST_KEY_CHECKING=False

# Install requirements.
RUN  yum -y update && yum -y install \
      git
      
RUN git config --global credential.helper store

CMD ["/usr/lib/systemd/systemd"]
